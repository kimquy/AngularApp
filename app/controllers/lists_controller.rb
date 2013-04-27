class ListsController < ApplicationController
	respond_to :json
	skip_before_filter :verify_authenticity_token

	def index
		id = params[:group_id]
		respond_with List.where(group_id: id)
	end

	# def show
	# 	id = params[:id]
	# 	respond_with List.where(group_id: id)
	# end
	def create
		respond_with List.create({name: params[:name], group_id: params[:group_id]})
	end

	def destroy
		respond_with List.destroy(params[:id])
	end
end
