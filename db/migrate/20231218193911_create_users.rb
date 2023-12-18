class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :type
      t.integer :parent_id

      t.timestamps
    end
  end
end
