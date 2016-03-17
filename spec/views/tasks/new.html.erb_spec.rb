require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :task => "MyString",
      :is_completed => false,
      :user => nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_task[name=?]", "task[task]"

      assert_select "input#task_is_completed[name=?]", "task[is_completed]"

      assert_select "input#task_user_id[name=?]", "task[user_id]"
    end
  end
end
