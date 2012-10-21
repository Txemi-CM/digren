class CreateBookquotes < ActiveRecord::Migration
  def change
    create_table :bookquotes do |t|
      t.string :asin
      t.string :title
      t.string :author
      t.text :quote
      t.string :tw_user
      t.string :published

      t.timestamps
    end
  end
end
