class ChargesController < ApplicationController

 
  def create
    @amount = params[:amount].to_f 
    @amount = @amount * 100
    @final_amount = @amount
    code = params[:couponCode]

  if !code.blank?
    @coupon = Coupon.get(code)

  if @coupon.nil?
    @final_amount= @amount
    @discount_amount = 00
    
    return
  else
    @final_amount = @coupon.apply_discount(@amount.to_i)
    @discount_amount = (@amount - @final_amount)
  end

  charge_metadata = {
    :coupon_code => @coupon.code,
    :coupon_discount => @coupon.discount_percent_human
  }
  end

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  stripe_charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @final_amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd',
    :metadata    => charge_metadata
  )
  @charge = Charge.create(amount: @final_amount, coupon: @coupon, stripe_id: stripe_charge.id)
  rescue Stripe::CardError => e
    flash[:error] = e.message
  end
  
end
