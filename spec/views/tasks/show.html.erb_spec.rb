require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :task => "Task",
      :is_completed => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
