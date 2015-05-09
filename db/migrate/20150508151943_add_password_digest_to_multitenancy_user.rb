class AddPasswordDigestToMultitenancyUser < ActiveRecord::Migration
  def change
    add_column :multitenancy_users, :password_digest, :string
  end
end
