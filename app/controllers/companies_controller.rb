class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  respond_to :html

  load_and_authorize_resource

  def index
    @companies = Company.all
    respond_with(@companies)
  end

  def show
    respond_with(@company)
    redirect_to_slug(action: :show, object: set_company)
  end

  def new
    @company = Company.new
    respond_with(@company)
  end

  def edit
    if current_user.id == @company.user_id
      render :edit
    else
      respond_with company_path, notice: "You don't have permission! 🚫"
    end
  end

  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    @company.save
    respond_with(@company)
  end

  def update
    @company.update(company_params)
    respond_with(@company)
  end

  def destroy
    @company.destroy
    respond_with(@company)
  end

  def my_companies
    @my_companies = current_user.companies
  end


  private
    def set_company
      @company = Company.friendly.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :details, :email, :website, :found_date)
    end
end
