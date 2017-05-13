class CreateIcons < ActiveRecord::Migration[5.0]
  def change
    create_table :icons do |t|
      t.string :icon_path

      t.timestamps
    end
  end
end
