class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :family_id
      t.integer :pet_id
      t.string :status
      t.string :pet_name
      t.string :family_name
    end
  end
end
