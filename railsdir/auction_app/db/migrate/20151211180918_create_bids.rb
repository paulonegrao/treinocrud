class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.money :amount
      t.string :aasm_state
      t.references :user, index: true, foreign_key: true
      t.references :auction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
