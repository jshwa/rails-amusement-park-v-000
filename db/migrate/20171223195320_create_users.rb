class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password-digest
      t.string :happiness
      t.string :nausea
      t.integer :height
      t.integer :tickets
      t.boolean :admin, default: false

      t.timestamps null: false
    end
  end
end
