class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :description
      t.references :post
      t.timestamps
    end
  end
end
