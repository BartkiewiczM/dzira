class User < ApplicationRecord
  has_many :assigned_tasks, foreign_key: 'assignee_id', class_name: 'Task'
  has_many :created_tasks, foreign_key: 'author_id', class_name: 'Task'
end
