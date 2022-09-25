class BulkDiscountsController < ApplicationController
  before_action :find_merchant

  def index
    @bulk_discounts = BulkDiscount.all
  end

  def show
    @bulk_discount = BulkDiscount.find(params[:id])
  end

  def new
  end

  def find_merchant
    @merchant = Merchant.find(params[:merchant_id])
  end
end
