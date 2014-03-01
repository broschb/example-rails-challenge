class ChargesController < ApplicationController
  def view
    @failed_charges = CreditCardCharge.includes(:customer).where(paid: false)
    @disputed_charges = CreditCardCharge.includes(:customer).where(paid: true, refunded: true)
    @successful_charges = CreditCardCharge.where(paid: true, refunded: false)
  end
end
