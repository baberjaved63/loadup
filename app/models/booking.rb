class Booking < ApplicationRecord
  validates :hours, numericality: {greater_than_or_equal_to: 2, less_than_or_equal_to: 8}

  enum animal_type: %i[cat dog]

  def set_total_charge
    self.charge = ChargeCalculatorService.new(self).call
  end
end
