class AddMentorToCourse < ActiveRecord::Migration
  def change
    add_reference :courses, :mentor, index: true
    add_foreign_key :courses, :mentors
  end
end
