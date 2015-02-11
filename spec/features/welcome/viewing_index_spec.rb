require 'spec_helper'

feature 'Visitor views the addresses' do
  before(:each) do
    visit root_path
  end

  scenario 'on the index page' do
    expect(page).to have_content('Hello world')
  end
end
