class GroupsController < ApplicationController

  def show
    @newbook = Book.new
    @group = Group.find(params[:id])
  end

  def index
    @newbook = Book.new
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    @group.save
    redirect_to groups_path
  end

  def edit
  end

  def update
  end

  private

  def group_params
    params.require(:group).permit(:name,:introduction,:image)
  end

  def ensure_correct_user
    @group = Group.find(params[:id])
    unless @group.owner_id == current_user.id
      redirect_to groups_path
    end
  end

end