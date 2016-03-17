require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :task => "Task",
        :is_completed => false,
        :user => nil
      ),
      Task.create!(
        :task => "Task",
        :is_completed => false,
        :user => nil
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => "Task".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
