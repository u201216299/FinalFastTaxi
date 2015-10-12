class RegisterController < ApplicationController
  
  layout "HomePage"
    before_action :set_customer, only: [:show, :edit, :update, :destroy]
    
  def index
    @customer = Customer.new
  end
  
    # GET /customers/new
  def new
    @customer = Customer.new
  end
end
