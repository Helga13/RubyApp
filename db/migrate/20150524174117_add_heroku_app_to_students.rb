class AddHerokuAppToStudents < ActiveRecord::Migration
  def change
    add_column :students, :heroku_app, :string
  end
end
