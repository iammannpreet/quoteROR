class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes do |t|
      t.text :content
      t.integer :votes

      t.timestamps
    end
  end
end
