class Task < ActiveRecord::Base
  belongs_to :user

  enum status: [:pending, :inprocess, :done]
end
