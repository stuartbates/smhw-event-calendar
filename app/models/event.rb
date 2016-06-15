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

end
