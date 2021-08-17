class CreateBalances < ActiveRecord::Migration[6.1]
  def change
    create_table :balances do |t|
      t.decimal :btc
      t.decimal :usd
      t.string :user_id

      t.timestamps
    end
  end
end
