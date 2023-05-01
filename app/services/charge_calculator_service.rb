class ChargeCalculatorService
  BASE_CHARGE = 20
  DOG_HOURLY = 10
  CAT_HOURLY = 5

  attr_accessor :booking

  def initialize(booking)
    @booking = booking
  end

  def call
    BASE_CHARGE + (booking.hours * self.class.const_get("#{booking.animal_type.upcase}_HOURLY"))
  end
end
