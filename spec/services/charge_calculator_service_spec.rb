require "rails_helper"

RSpec.describe ChargeCalculatorService do
  let(:dog_booking) { create :booking, animal_type: 'dog' }
  let(:cat_booking) { create :booking, animal_type: 'cat' }

  context "when animal_type is dog" do
    it "add 10 dollar for every hour plus base charge" do
      service = ChargeCalculatorService.new dog_booking
      expect(service.call).to eq (20 + (10 * dog_booking.hours))
    end
  end

  context "when animal_type is cat" do
    it "add 10 dollar for every hour plus base charge" do
      service = ChargeCalculatorService.new cat_booking
      expect(service.call).to eq (20 + (5 * cat_booking.hours))
    end
  end
end
