class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :description
      t.string :adoption_status
      # t.integer :bff_id
      t.integer :shelter_id
      
 
      t.timestamps
    end
  end
end
