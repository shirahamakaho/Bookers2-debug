class GroupsController < ApplicationController

  def show
  end

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new
  end

  def edit
  end
  
  def update
  end
  
  private
  
  def group_params
    params.require(:group).permit(:name,:introduction)
  end

end