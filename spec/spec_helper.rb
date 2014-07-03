require "capybara/rspec"
require "./rsvp_app"

Capybara.app = RsvpApp

feature "Homepage" do
  scenario "should have RSVP link" do
    visit "/"
    click_link 'RSVP'
    expect(page).to have_content("RSVP")
  end
end

feature "RSVP Page" do
  scenario "Fills in RSVP" do
    visit "/rsvps/new"
    fill_in 'First Name', :with => 'Kelly'
    fill_in 'Email', :with => 'Kelly.Pederson@gmail.com'
    fill_in 'Number of guests', :with => 'number of guests'
    choose 'chicken'
    click_link 'submit form'
    expect(page).to have_content 'Thanks for RSVPing'
  end
end








