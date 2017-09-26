require "capybara/rspec"
require "./app"
require "pry"
require('spec_helper')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the survey path', {:type => :feature}) do
  it('enters a survey') do
    visit('/')
    fill_in('survey_name' with: 'test_survey')
    click_button('Add Survey!')
    expect(page)to have_content('test_survey')
  end
end
