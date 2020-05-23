class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string "name"
      t.string "school"
      t.string "grade"
      t.date "birth"
      t.string "phone_number1"
      t.string "phone_number2"
      t.string "phone_number3"
      t.integer "count_visit"
      t.integer "point"
      t.string "level"

      t.timestamps
    end
  end
end
