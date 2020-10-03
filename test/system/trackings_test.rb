require "application_system_test_case"

class TrackingsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit trackings_url
  
    assert_selector "h1", text: "Trackings"
    assert_selector ".tracking", count: Tracking.count
  end
end
