# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  start_date  :date
#  end_date    :date
#
# Indexes
#
#  index_events_on_end_date    (end_date)
#  index_events_on_start_date  (start_date)
#

class Event < ActiveRecord::Base

  validates :title, :start_date, :end_date, presence: true

  def as_json(options = nil)
    {
        title: title,
        start: start_date.to_time.iso8601,
        end: end_date.to_time.iso8601,
    }
  end

end
