class Coupon < ApplicationRecord

    def details
        self.coupon_code + "|" + self.store
    end
end
