class DatasetsController < ApplicationController

    def index
        @datasets = Dataset.all
        render json: @datasets
    end

    def show
        @dataset = Dataset.find_by(id: params["id"])
        render json: @dataset
    end

    #TODO Need to change so that successful delete destroys file on cloudinary backend
    def destroy
        ds = Dataset.find_by(id: params[:id]).destroy()
        render json: ds
    end

    def create
        file = params["file"].tempfile
        ds = Dataset.new(name: params["file"].original_filename, user_id: params["user"])
        if ds.valid?
            cloudRet = uploadToCloud(file)
            ds.csv_url = cloudRet["url"]
            ds.save
            render json: dsToJSON(ds)
        end
    end

    private

    def dsToJSON(ds)
        return {
            id: ds.id,
            name: ds.name,
            description: ds.description,
            csv_url: ds.csv_url,
            user_id: ds.user_id
        }.to_json
    end

    def uploadToCloud(file)
        auth = {
            cloud_name: 'dzzbsrh9a',
            api_key: '499476266595425',
            api_secret: '93EtXNtQuJNZcBOWODqGHx-_nWQ',
            resource_type: "raw"
        }
        return Cloudinary::Uploader.upload(file, auth)
    end
end
