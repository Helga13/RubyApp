class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :github_user

      t.timestamps null: false
    end
  end
end
