module Login
  def login_as(contact)
    visit contacts_path
    within('tr', text: contact.first_name) do
      click_on 'login'
    end
  end
end

World(Login)
