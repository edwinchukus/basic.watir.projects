class LoginPage
  include PageObject

  text_field(:username, :id => 'id_username')
  text_field(:password, :id => 'id_password')
  button(:login, :name => 'submit')
end