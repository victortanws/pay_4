class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.integer :user_id
      t.integer :other_id

      t.timestamps

    end
  end
end
