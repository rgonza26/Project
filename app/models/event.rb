class Event < ActiveRecord::Base
  validates :eventid, presence: true
  validates :eventid, uniqueness: true
end
