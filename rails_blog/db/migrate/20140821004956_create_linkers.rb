class CreateLinkers < ActiveRecord::Migration
  def change
    create_table :linkers do |t|
      t.references :post
      t.references :tag
      t.timestamps
    end
  end
end
