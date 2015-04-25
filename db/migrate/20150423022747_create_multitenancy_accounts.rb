class CreateMultitenancyAccounts < ActiveRecord::Migration
  def change
    create_table :multitenancy_accounts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
