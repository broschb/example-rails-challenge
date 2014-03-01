class Customer < ActiveRecord::Base
  has_many :credit_card_carges

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
