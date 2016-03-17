json.array!(@tasks) do |task|
  json.extract! task, :id, :task, :due_date, :is_completed, :user_id
  json.url task_url(task, format: :json)
end
