require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  test "visiting the about page" do
    visit about_path
  
    assert_selector "h1", text: "About"
  end
end
