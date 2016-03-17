require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :task => "MyString",
      :is_completed => false,
      :user => nil
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_task[name=?]", "task[task]"

      assert_select "input#task_is_completed[name=?]", "task[is_completed]"

      assert_select "input#task_user_id[name=?]", "task[user_id]"
    end
  end
end
