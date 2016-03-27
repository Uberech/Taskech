require 'rails_helper'

RSpec.feature "Tasks" do
  before do
    @john = User.create(email: "john@example.com", password: "password")
    login_as @john
    visit "/"
    click_button('Tasks')
  end
  
  scenario "My Tasks"  do
    click_link('All Tasks')
    expect(page).to have_content('My Tasks')
  end
  
  scenario "Today's Tasks"  do
    expect(page).to have_content('My Tasks')
  end
  
end