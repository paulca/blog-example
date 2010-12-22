class CreateCellPhones < ActiveRecord::Migration
  def self.up
    create_table :cell_phones do |t|
      t.string :title
      t.date :manufacturing_date
      t.text :description
      t.boolean :in_stock

      t.timestamps
    end
  end

  def self.down
    drop_table :cell_phones
  end
end
