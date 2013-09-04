class CreatePeopleActions < ActiveRecord::Migration
  def change
    create_table :people_actions do |t|
      t.integer :u_id, :null => false
      t.integer :e_id, :null => false
      t.integer :action ,:default => 0, :null => false
      t.timestamps
    end
  end
end
