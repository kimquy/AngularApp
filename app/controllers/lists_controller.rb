class ListsController < ApplicationController
	respond_to :json
	def index
		id = params[:group_id]
		respond_with List.where(group_id: id)
	end

	# def show
	# 	id = params[:id]
	# 	respond_with List.where(group_id: id)
	# end
end
