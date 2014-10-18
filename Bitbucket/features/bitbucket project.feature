Feature: Login on the Bitbucket Application

  As a trusted customer
  I would like to login to Asda application
  Background:
    Given I am on the "https://bitbucket.org/account/signin/?next=/"


    @first
  Scenario: Login with valid User name and password

    When I complete my valid email field
    And I complete my password field
    And I click on my sign in button
    Then I should see create link

     @second
  Scenario: Unsuccessful Logon with valid username and invalid password

    When I complete my valid email field
    And I complete my invalid password field
    And I click on my sign in button
    Then I fail to login

   @third
  Scenario: Unsuccessful Logon with Invalid username and valid password

    When I complete my invalid email field
    And I complete my valid password field
    And I click on my sign in button
    Then I fail to login

  @fourth
  Scenario: Unsuccessful Logon with Invalid username and valid password

    When I complete my invalid email field
    And I complete my invalid password field
    And I click on my sign in button
    Then I fail to login
