class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, presence: true
      t.string :password, presence: true
      t.string :signature, presence: true
      # t.string :icon
      t.references :icon, foreign_key: true
      t.timestamps
    end
  end
end
