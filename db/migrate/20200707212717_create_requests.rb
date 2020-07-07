class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :family_id
      t.integer :pet_id
    end
  end
end
