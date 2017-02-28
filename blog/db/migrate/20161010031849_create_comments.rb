class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.boolean :push_praise
      t.references :article, foreign_key: true
      t.references :visitor, foreign_key: true

      t.timestamps
    end
  end
end
