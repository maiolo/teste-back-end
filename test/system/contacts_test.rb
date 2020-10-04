require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
  
    assert_selector "h1", text: "Contact List"
    assert_selector ".contact", count: Contact.count
  end

end
