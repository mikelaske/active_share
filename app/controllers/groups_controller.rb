class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new
    @group.ninetyfive = params[:ninetyfive]
    @group.seventyfive = params[:seventyfive]
    @group.fifty = params[:fifty]
    @group.twentyfive = params[:twentyfive]
    @group.five = params[:five]
    @group.std_dev = params[:std_dev]
    @group.median = params[:median]
    @group.mean = params[:mean]

    if @group.save
      redirect_to "/groups", :notice => "Group created successfully."
    else
      render 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    @group.ninetyfive = params[:ninetyfive]
    @group.seventyfive = params[:seventyfive]
    @group.fifty = params[:fifty]
    @group.twentyfive = params[:twentyfive]
    @group.five = params[:five]
    @group.std_dev = params[:std_dev]
    @group.median = params[:median]
    @group.mean = params[:mean]

    if @group.save
      redirect_to "/groups", :notice => "Group updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])

    @group.destroy

    redirect_to "/groups", :notice => "Group deleted."
  end
end
