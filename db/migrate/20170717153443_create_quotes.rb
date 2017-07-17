class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.column :content, :string
      t.column :author, :string
      t.timestamps
    end
  end
end
