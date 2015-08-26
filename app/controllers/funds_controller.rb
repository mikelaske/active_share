class FundsController < ApplicationController
  def index
    @q = Fund.ransack(params[:q])
    @funds = @q.result
  end

  def show
    @fund = Fund.find(params[:id])
    @fund.notes = params[:notes]
  end

  def new
    @fund = Fund.new
  end

  def create
    @fund = Fund.new
    @fund.group_id = params[:group_id]
    @fund.score = params[:score]
    @fund.name = params[:name]
    @fund.notes = params[:notes]

    if @fund.save
      redirect_to "/funds", :notice => "Fund created successfully."
    else
      render 'new'
    end
  end

  def edit
    @fund = Fund.find(params[:id])
  end

  def update
    @fund = Fund.find(params[:id])

    @fund.group_id = params[:group_id]
    @fund.score = params[:score]
    @fund.name = params[:name]

    if @fund.save
      redirect_to "/funds", :notice => "Fund updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @fund = Fund.find(params[:id])

    @fund.destroy

    redirect_to "/funds", :notice => "Fund deleted."
  end
end
