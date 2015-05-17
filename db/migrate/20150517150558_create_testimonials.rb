class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :user_name
      t.text :feedback

      t.timestamps null: false
    end
  end
end
