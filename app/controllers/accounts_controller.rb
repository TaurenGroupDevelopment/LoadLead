class AccountsController < ApplicationController

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
    @account.build_owner
  end

  def create
    @account = Account.new(account_params)
    @account.owner.is_owner = true
    if @account.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

private

  def account_params
    params.require(:account).permit(:name, owner_attributes: [:f_name, :l_name, :country_code, :mobile_number, :email, :password, :password_confirmation])
  end

end
