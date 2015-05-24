class AddCourseToStudent < ActiveRecord::Migration
  def change
    add_reference :students, :course, index: true
    add_foreign_key :students, :courses
  end
end
