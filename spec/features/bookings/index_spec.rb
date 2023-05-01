require 'rails_helper'

RSpec.describe "Index Booking Page", type: :feature do
  it "lists all bookings" do
    create_list :booking, 5

    visit "admin/bookings"

    expect(page).to have_css("tr", count: 6)
  end
end
