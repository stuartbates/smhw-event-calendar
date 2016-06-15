require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|
  config.after do |example|
    if example.metadata[:type] == :feature and example.exception.present?
      save_and_open_page
    end
  end
end