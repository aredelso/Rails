require 'rails_helper'

RSpec.feature "MakeAndModelYears", type: :feature do
  it "shows the welcome page" do
    visit '/welcome/create_car'
    expect(page).to have_content("Welcome to the Car Simulator")
  end

  it "asks for make and model year of the car to be simulated." do
   visit '/welcome/create_car'
   expect(page).to have_field("make")
   expect(page).to have_field("year")
  end
​
end
