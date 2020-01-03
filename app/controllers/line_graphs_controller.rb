class LineGraphsController < ApplicationController
    def create
        newHash = {}
        params["numberOfSeries"].times{|index|
            newHash["Series #{index+1}"] = params["Series_#{index+1}"]
        }
        graph = LineGraph.new(title: params[:title], description: "", xAxis: params["X_Axis"].to_json, flattenedSeries: newHash.to_json, dataset_id: params["dataset_id"])
        graph.save
        render json: graph
    end

    def show
        @line_graph = LineGraph.find_by(id: params["id"])
        render json: @line_graph
    end

    def destroy
        line = LineGraph.find_by(id: params[:id]).destroy()
        render json: line
    end

    def update
        @line_graph = LineGraph.find_by(id: params[:id])
        render json: @line_graph.update(p)
    end

    private

    def p
        params.permit(:description)
    end

end
