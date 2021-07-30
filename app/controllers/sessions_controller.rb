class SessionsController < ApplicationController
  def new
    redirect_to(current_owner) if logged_in?
  end

  def create
    remember_me = remember? params[:sessions][:remember_me]
    @account = Account.find_by email: params[:sessions][:email]
    if @account.authenticate params[:sessions][:password]
      login_account @account, remember_me
      flash[:success] = t "sessions.login.success"
      redirect_back_or current_owner
    else
      flash[:danger] = t "sessions.login.failure"
      render :new
    end
  end

  def destroy
    redirect_to(root_path) unless logged_in?

    forget current_account
    log_out
  end

  private

  def remember? remember_me
    remember_me == "1"
  end

  def login_account account, remember_me
    log_in account
    remember_me ? remember(account) : forget(account)
  end
end
