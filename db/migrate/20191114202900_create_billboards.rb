class CreateBillboards < ActiveRecord::Migration[6.0]
  def change
    create_table :billboards do |t|
      t.string :top_100_us
      t.string :top_100_eu
      t.string :top_50

      t.timestamps
    end
  end
end
