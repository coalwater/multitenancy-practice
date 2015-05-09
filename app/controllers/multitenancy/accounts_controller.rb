require_dependency "multitenancy/application_controller"

module Multitenancy
  class AccountsController < ApplicationController
    def new
      @account = Account.new
      @account.build_owner
    end
    def create
      Account.create(accounts_params)
      redirect_to multitenancy.root_path, flash: {success: 'Your account has been successfully created.'}
    end

    def accounts_params
      params.require(:account).permit(:name, owner_attributes: [:name, :email, :password])
    end
  end
end
