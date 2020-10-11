require 'test_helper'

class TrackingTest < ActiveSupport::TestCase
  test "tracking data can be created" do
    tracking = Tracking.create(uuid: Faker::Internet.uuid, page: "/")
    assert tracking.created_at
  end
end
