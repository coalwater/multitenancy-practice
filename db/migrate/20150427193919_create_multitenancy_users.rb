class CreateMultitenancyUsers < ActiveRecord::Migration
  def change
    create_table :multitenancy_users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
