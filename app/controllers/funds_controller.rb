class FundsController < ApplicationController
  def index
    @q = Fund.ransack(params[:q])
    @funds = @q.result
  end

  def show
    @fund = Fund.find(params[:id])
    @fund.notes = params[:notes]

    @favorite = Favorite.new
    @favorite.user_id = params[:user_id]
    @favorite.fund_id = params[:fund_id]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite created successfully."
    else
      render 'show'
    end
  end

  def new
    @fund = Fund.new
  end

  def create
    @fund = Fund.find(params[:id])
    @fund.notes = params[:notes]

    if @fund.save
      redirect_to "/funds", :notice => "Notes updated successfully."
    else
      render 'show'
    end
  end

  def edit
    @fund = Fund.find(params[:id])
  end

  def update
    @fund = Fund.find(params[:id])

    if @fund.save
      redirect_to "/funds", :notice => "Notes updated successfully."
    else
      render 'show'
    end
  end

  def destroy
    @fund = Fund.find(params[:id])

    @fund.destroy

    redirect_to "/funds", :notice => "Fund deleted."
  end
end
