require 'rails_helper'

feature 'Event management' do

  scenario 'user views calendar with events rendered', js: true do
    create(:event)
    visit events_path
    expect(page).to have_css '.fc-event-container', count: 1
  end

end