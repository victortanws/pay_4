class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :other_id
      t.string :amount
      t.string :description

      t.timestamps

    end
  end
end
