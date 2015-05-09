class AddOwnerIdToMultitenancyAccount < ActiveRecord::Migration
  def change
    add_column :multitenancy_accounts, :owner_id, :integer
  end
end
