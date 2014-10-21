
Before do
  @browser = Watir::Browser.new :firefox
  @browser.window.maximize
  @login_page = LoginPage.new(@browser)
end




After do
  @browser.close
end