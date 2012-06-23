class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :language
      t.string :url
      t.integer :entry_id

      t.timestamps
    end

    add_index :codes, :language
    add_index :codes, :entry_id
  end
end
