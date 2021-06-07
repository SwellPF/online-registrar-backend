class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.float :credit_hours
      t.string :days
      t.time :start_time
      t.time :end_time
      t.integer :capacity
      t.integer :category_id

      t.timestamps
    end
  end
end
