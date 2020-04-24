class Coupon < ActiveRecord::Base

    def display
        "The coupon for store, #{self.store}, code is #{self.coupon_code}"
    end
end