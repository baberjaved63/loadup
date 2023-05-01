require 'rails_helper'

RSpec.describe "New Booking Page", type: :feature do
  it "displays and submits bookings form" do
    visit "/bookings/new"

    expect(page).to have_css("form")
    fill_in "booking_first_name",	with: "Baber"
    fill_in "booking_last_name",	with: "Javed"
    fill_in "booking_animal_name",	with: "Roadie"
    fill_in "booking_animal_name",	with: "Roadie"
    select "dog", from: "booking_animal_type"
    fill_in "booking_hours", with: 3
    click_on "Create Booking"

    expect(page).to have_text "$50"
  end
end
