class GroupsController < ApplicationController
	respond_to :json
  skip_before_filter :verify_authenticity_token 
  
	def index
    respond_with Group.all
  end

  def show
    respond_with Group.find(params[:id])
  end

  def create
    respond_with Group.create({name: params[:name], id: params[:id]})
  end

  def update
    params.permit!
    g = Group.where(id: params[:id])
    respond_with g.update(params[:id], params[:group])
  end

  def destroy
    params.permit(:id)
    respond_with Group.destroy(params[:id])
  end
end
