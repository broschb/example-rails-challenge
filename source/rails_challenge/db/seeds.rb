# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
customer_1 = Customer.create(first_name: 'Johny', last_name: 'Flow')
customer_2 = Customer.create(first_name: 'Raj', last_name: 'Jamnis')
customer_3 = Customer.create(first_name: 'Andrew', last_name: 'Chung')
customer_4 = Customer.create(first_name: 'Mike', last_name: 'Smith')

#successful charges
cc_successful_c1 = [
  CreditCardCharge.create(created: Time.now, paid: true, amount: rand, currency: 'USD', refunded: false, customer_id: customer_1.id),
  CreditCardCharge.create(created: Time.now - 1.days, paid: true, amount: rand, currency: 'USD', refunded: false, customer_id: customer_1.id),
  CreditCardCharge.create(created: Time.now - 2.days, paid: true, amount: rand, currency: 'USD', refunded: false, customer_id: customer_1.id),
  CreditCardCharge.create(created: Time.now - 3.days, paid: true, amount: rand, currency: 'USD', refunded: false, customer_id: customer_1.id),
  CreditCardCharge.create(created: Time.now - 4.days, paid: true, amount: rand, currency: 'USD', refunded: false, customer_id: customer_1.id)]
cc_successful_c2 = [
  CreditCardCharge.create(created: Time.now, paid: true, amount: rand, currency: 'AUD', refunded: false, customer_id: customer_2.id),
  CreditCardCharge.create(created: Time.now - 1.days, paid: true, amount: rand, currency: 'AUD', refunded: false, customer_id: customer_2.id),
  CreditCardCharge.create(created: Time.now - 2.days, paid: true, amount: rand, currency: 'AUD', refunded: false, customer_id: customer_2.id)]
cc_successful_c3 = [
  CreditCardCharge.create(created: Time.now, paid: true, amount: rand, currency: 'EUR', refunded: false, customer_id: customer_3.id)]
cc_successful_c4 = [
  CreditCardCharge.create(created: Time.now, paid: true, amount: rand, currency: 'USD', refunded: false, customer_id: customer_4.id)]

#failed charges
cc_failed_c3 = [
  CreditCardCharge.create(created: Time.now, paid: false, amount: rand, currency: 'USD', refunded: false, customer_id: customer_3.id),
  CreditCardCharge.create(created: Time.now - 1.days, paid: false, amount: rand, currency: 'USD', refunded: false, customer_id: customer_3.id),
  CreditCardCharge.create(created: Time.now - 2.days, paid: false, amount: rand, currency: 'USD', refunded: false, customer_id: customer_3.id)]
cc_failed_c4 = [
  CreditCardCharge.create(created: Time.now, paid: false, amount: rand, currency: 'USD', refunded: false, customer_id: customer_4.id),
  CreditCardCharge.create(created: Time.now - 1.days, paid: false, amount: rand, currency: 'USD', refunded: false, customer_id: customer_4.id)]

#disputed
cc_disputed_c1 = [
  CreditCardCharge.create(created: Time.now, paid: true, amount: rand, currency: 'USD', refunded: true, customer_id: customer_1.id),
  CreditCardCharge.create(created: Time.now - 1.days, paid: true, amount: rand, currency: 'USD', refunded: true, customer_id: customer_1.id),
  CreditCardCharge.create(created: Time.now - 2.days, paid: true, amount: rand, currency: 'USD', refunded: true, customer_id: customer_1.id)]
cc_diputed_c2 = [
  CreditCardCharge.create(created: Time.now, paid: true, amount: rand, currency: 'USD', refunded: true, customer_id: customer_2.id),
  CreditCardCharge.create(created: Time.now - 1.days, paid: true, amount: rand, currency: 'USD', refunded: true, customer_id: customer_2.id)]
