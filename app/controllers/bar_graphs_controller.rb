class BarGraphsController < ApplicationController
    def index
        @bar_graphs = BarGraph.all
        render json: @bar_graphs
    end

    def destroy
        bar = BarGraph.find_by(id: params[:id]).destroy()
        render json: bar
    end

    def create
        newHash = {}
        params["numberOfSeries"].times{|index|
            newHash["Series #{index+1}"] = params["Series_#{index+1}"]
        }
        graph = BarGraph.new(title: params[:title], description: "", xAxis: params["X_Axis"].to_json, flattenedSeries: newHash.to_json, dataset_id: params["dataset_id"])
        graph.save
        render json: graph
    end

    private

    def seriesHashed
        
    end
end
