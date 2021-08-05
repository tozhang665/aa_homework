class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    #each Person should have a name and a house_id
    create_table :people do |t|
      t.string :name, null: false
      t.integer :house_id, null:false
    end
  end
end
