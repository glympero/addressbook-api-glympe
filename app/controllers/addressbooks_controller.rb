class AddressbooksController < ApplicationController
  before_action :set_addressbook, only: [:show, :update, :destroy]
  


  # GET /addressbooks
  def index
    @addressbooks = Addressbook.all

    render json: @addressbooks
  end

  # GET /addressbooks/1
  def show
    render json: @addressbook
  end

  # POST /addressbooks
  def create
    @addressbook = Addressbook.new(addressbook_params)

    if @addressbook.save
      render json: @addressbook, status: :created, location: @addressbook
    else
      render json: @addressbook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /addressbooks/1
  def update
    if @addressbook.update(addressbook_params)
      render json: @addressbook
    else
      render json: @addressbook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /addressbooks/1
  def destroy
    @addressbook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addressbook
      @addressbook = Addressbook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def addressbook_params
      params.permit(:name, :email, :address, :phone, :organisation_id)
    end
end
