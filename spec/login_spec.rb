# frozen_string_literal: true

require 'selenium-webdriver'
require 'pry'

RSpec.describe 'Login to Medaxion Loadtest' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 10 # seconds
  end

  after(:each) do
    @driver.quit
  end

  it 'logs in with valid credentials' do
    # Navigate to the login page
    @driver.get 'https://loadtest.medaxion.com/login'

    # Fill in email and password
    email_field = @driver.find_element(:id, 'email')
    email_field.send_keys 'rich.downie@medaxion.com'

    password_field = @driver.find_element(:id, 'password')
    password_field.send_keys 'testing60'

    # Submit the form
    submit_button = @driver.find_element(:id, 'submit_button')
    submit_button.click

    # Wait for the page to load after login
    sleep 3 # You can use a better wait strategy like waiting for an element on the next page
    # Example verification - you should adjust based on actual application behavior
    expect(@driver.title).to eq('Home | Medaxion') # Replace with actual expected title
  end
  xit 'logs in with invalid credentials' do

  end
end
