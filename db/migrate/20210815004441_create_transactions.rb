class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :type_transaction
      t.string :user_id
      t.string :csend
      t.string :creceive
      t.decimal :asend
      t.decimal :areceive

      t.timestamps
    end
  end
end
