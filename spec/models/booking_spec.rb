require 'rails_helper'

RSpec.describe Booking, type: :model do
  it "validates number of hours between 2 and 8" do
    booking = build :booking, hours: 1.9
    expect(booking).to_not be_valid

    booking.hours = 8.01
    expect(booking).to_not be_valid

    booking.hours = 5
    expect(booking).to be_valid
  end
end
