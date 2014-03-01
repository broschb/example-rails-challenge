require 'spec_helper'

describe 'charges/view' do
  before(:each) do
    load "#{Rails.root}/db/seeds.rb"
    assign(:failed_charges, CreditCardCharge.includes(:customer).where(paid: false))
    assign(:disputed_charges, CreditCardCharge.includes(:customer).where(paid: true, refunded: true))
    assign(:successful_charges, CreditCardCharge.where(paid: true, refunded: false))
  end

  it 'renders a list for successful, failes, and disputed charges' do
    render
    rendered.should contain("Failed")
    rendered.should contain("Disputed")
    rendered.should contain("Successful")
  end

  it 'renders list properly with provided data' do
    render
    rendered.should have_xpath('.//div[@id="failed-charges"]/ul/li', count: 5)
    rendered.should have_xpath('.//div[@id="disputed-charges"]/ul/li')
    rendered.should have_xpath('.//div[@id="successful-charges"]/ul/li', count: 10)
  end
end
