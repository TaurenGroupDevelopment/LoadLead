class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :comp_name
      t.string :sub_id
      t.string :acc_status

      t.timestamps
    end
  end
end
