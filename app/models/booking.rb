#require 'test_helper'

class Booking < ActiveRecord::Base
  validates :userid, presence: true
  validates :userid, uniqueness: true
end
