class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end


  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    @coupon.save
    redirect_to coupons_path(@coupon)
  end
end
