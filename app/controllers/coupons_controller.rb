class CouponsController < ApplicationController

def index
  @coupons = Coupon.all
end

def show
    @coupon = Coupon.find(params[:id])
  end

def new
end


def create      #post couponS
    #byebug
    @coupon = Coupon.create({coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store]})

    redirect_to coupon_path(@coupon)
    # this is equal to @coupon.id > coupon_path directs to 'coupons/:id so needs an :id' 
end



end