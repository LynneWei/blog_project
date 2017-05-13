class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      # t.string :commenter_icon
      t.text :body
      t.boolean :push_praise
      t.references :article
      t.references :icon, foreign_key: true
      t.timestamps
    end
  end
end
