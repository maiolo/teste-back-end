require 'test_helper'

class ContactTest < ActiveSupport::TestCase
setup do
   Contact.destroy_all
end

  test "contact can be created" do
    contact = Contact.new(name: "John Lenon", email: "john@teste.com")
    assert contact.save
  end

  test "contact cannot be created with invalid e-mail" do
    contact = Contact.new(name: "John Lenon", email: "john@teste")
    assert_not contact.save
  end

  test "contact cannot be created with invalid e-mail - 2" do 
    contact = Contact.new(name: "John Lenon", email: "john.teste.com")
    assert_not contact.save
  end

  test "cannot create duplicated e-mail" do
    contact1 = Contact.create!(name: "John Lenon", email: "john@teste.com")
    contact2 = Contact.new(name: "John Travolta", email: "john@teste.com")
    assert_not contact2.save
  end
  
end