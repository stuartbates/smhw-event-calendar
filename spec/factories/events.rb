FactoryGirl.define do

  factory :event do
    title 'Event Title'
    start_date { 1.day.from_now }
    end_date { 1.day.from_now }
  end

end
