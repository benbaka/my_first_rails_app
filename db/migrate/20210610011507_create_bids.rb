class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.decimal :amount
      t.references :car, null: true, foreign_key: true

      t.timestamps
    end
  end
end
