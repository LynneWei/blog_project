class CreatePushPraises < ActiveRecord::Migration[5.0]
  def change
    create_table :push_praises do |t|
      t.integer :count
      t.references :article, foreign_key: true
      t.timestamps
    end
  end
end
