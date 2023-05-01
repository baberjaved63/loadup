class Booking < ApplicationRecord
  validates :hours, numericality: {less_than: 9, greater_than: 1}

  enum animal_type: %i[cat dog]

  def set_total_charge
    self.charge = ChargeCalculatorService.new(self).call
  end
end
