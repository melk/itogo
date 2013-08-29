class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id, :null => false
      t.string :title, :null => false
      t.text :description
      t.date :s_date
      t.time :s_time
      t.date :e_date
      t.time :e_time
      t.float :latitude
      t.float :longitude
      t.integer :visibility, :default => 1
      t.timestamps
    end
  end
end
