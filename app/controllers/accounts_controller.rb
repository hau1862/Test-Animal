class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new account_params
    redirect_to(root_path) unless valid_account_role @account

    if @account.save
      flash[:success] = t "accounts.create.success"
      log_in @account
      redirect_register_information @account
    else
      flash[:danger] = t "accounts.create.failure"
      redirect_to root_path
    end
  end

  private

  def redirect_register_information account
    if account.role.user?
      redirect_to new_user_path
    elsif account.role.company?
      redirect_to new_company_path
    end
  end

  def valid_account_role account
    account.role.user? || account.role.company?
  end

  def account_params
    params.require(:account).permit Account::ACCOUNT_PARAMS
  end
end
