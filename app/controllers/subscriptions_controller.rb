class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :update, :destroy]
  before_action :find_customer
  before_action :find_tea, only: %i[create]
  
  # GET /subscriptions
  def index
    @subscriptions = Subscription.all

    render json: @subscriptions
  end

  # GET /subscriptions/1
  def show
    render json: @subscription
  end

  # POST /subscriptions
  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      render json: @subscription, status: :created, location: @subscription
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subscriptions/1
  def update
    if @subscription.update(subscription_params)
      render json: @subscription
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subscriptions/1
  def destroy
    @subscription.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  def find_customer
    @customer = Customer.find_by(id: params[:customer_id])
    if @customer.nil?
      render json: { errors: "Customer not found" }, status: :not_found
    end
  end

  def find_tea
    @tea = Tea.find_by(id: params[:tea_id])
    if @tea.nil?
      render json: { errors: "Tea variety not found" }, status: :not_found
    end
  end

    # Only allow a trusted parameter "white list" through.
  def subscription_params
    params.require(:subscription).permit(:title, :price, :frequency, :status, :customer_id, :tea_id)
  end
end
