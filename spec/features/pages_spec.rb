require 'rails_helper'

RSpec.feature "Visiting Pages" do

  scenario "Landing"  do
    visit "/"
    expect(page).to have_content('Taskech')
    expect(page).to have_content('Sign up')

  end

  scenario "Tasks"  do
    visit "/tasks"
    expect(page).to have_content('My Tasks')
    
    # my tasks page - listing of tasks that you have entered - 
    #  I leave the details to you but should definitely include an ability to 
    #  add new tasks, delete tasks, task details with completion date.
    
  end

  scenario "Today"  do
    visit "/tasks/today"
    expect(page).to have_content("Tasks for Today")
    # today's task listing - this will display the tasks that have the 
    #  completion date on the current date and have not been completed yet, and 
    #  it will have a checkbox for completion, once this is checked it will move 
    #  the task to completed tasks and won't display here. There should be a 
    #  button for all tasks for the day which will show the completed tasks as 
    #  well
  end

  scenario "Week"  do
    visit "/tasks/week"
    expect(page).to have_content("Tasks for this Week")
    # weekly tasks listing - this will display all the tasks that are pending 
    #  and completed for the rest of the week (so upto 7 days in the future). 
    #  There should be buttons for displaying either all tasks (including 
    #  pending and completed) or just pending tasks in this page
  end

  scenario "Thumbnails"  do
    pending "Add test to check for thumbnails"
    expect(1).to eq(0)
  end

  scenario "Nav"  do
    pending "Add helper for nav checking"
    expect(1).to eq(0)
  end

  scenario "Footer"  do
    pending "Add helper for footer checking"
    expect(1).to eq(0)
    # Footer should include a link to Uberech
  end
  
end