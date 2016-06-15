require 'rails_helper'

feature 'Event management' do

  scenario 'user views calendar with events rendered', js: true do
    create(:event)
    visit events_path
    expect(page).to have_css '.fc-event-container', count: 1
  end

  scenario 'user creates a new event', js: true do
    visit events_path
    fill_in 'Start date', with: 1.days.from_now.to_date
    fill_in 'End date', with: 1.days.from_now.to_date
    fill_in 'Title', with: 'Event title'
    fill_in 'Description', with: 'Event description'
    click_button I18n.t('submit', scope: 'events.form')
    expect(page).to have_css '.fc-event-container', count: 1
  end

end