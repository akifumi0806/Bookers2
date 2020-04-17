class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.text :body

     create_table :mypages do |t|
      t.string :name
      t.string :introduction


      t.timestamps
    end
  end
end
