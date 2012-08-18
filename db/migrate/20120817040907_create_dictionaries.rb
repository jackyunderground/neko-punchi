class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :word, :null => false, :limit => 100
      t.text :text, :null => false

      t.timestamps
    end
  end
end
