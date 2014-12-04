require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "booking must not be empty" do
    booking = Booking.new
    assert booking.invalid?
    #assert booking.errors[:userid].any?
    #assert booking.errors[:eventid].any?

    #assert_equal [I18n.translate('errors.messages.taken')],
                 booking.errors[:eventid]
  end
end
