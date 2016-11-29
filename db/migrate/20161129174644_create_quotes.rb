class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :author
      t.string :genre

      t.timestamps
    end
  end
end
