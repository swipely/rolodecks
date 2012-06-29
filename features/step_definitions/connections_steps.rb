Given /^I have a contact record$/ do
  @contact = Contact.new
  @contact.email = Random.email
  @contact.first_name = Random.firstname
  @contact.last_name = Random.lastname
  @contact.phone = Random.phone
  @contact.save!
end

When /^I go to the contacts page$/ do
  visit contacts_path
end

When /^I click login next to my name$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I see my name in the nav bar$/ do
  pending # express the regexp above with the code you wish you had
end