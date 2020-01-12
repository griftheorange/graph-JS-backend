class PieGraphsController < ApplicationController
    def create
        newHash = {}
        params["numberOfSeries"].times{|index|
            newHash["Series #{index+1}"] = params["Series_#{index+1}"]
        }
        graph = PieGraph.new(title: params[:title], description: "", xAxis: params["X_Axis"].to_json, flattenedSeries: newHash.to_json, dataset_id: params["dataset_id"])
        graph.save
        render json: graph
    end

    def show
        @pie_graph = PieGraph.find_by(id: params["id"])
        render json: @pie_graph
    end

    def destroy
        line = PieGraph.find_by(id: params[:id]).destroy()
        render json: line
    end

    def update
        @pie_graph = PieGraph.find_by(id: params[:id])
        render json: @pie_graph.update(p)
    end

    private

    def p
        params.permit(:description)
    end
end
