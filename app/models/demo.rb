class Demo < ApplicationRecord
  belongs_to :student
  has_one :sub_demo
  before_create :greeting_message

  def greeting_message
    puts 'Hey! this will run before you create object'
  end
end
