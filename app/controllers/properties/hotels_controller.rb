class Properties::HotelsController < ApplicationController


  def index

      @hotels = Properties::Hotel.where(:users_id => current_user.id)

  end

  def new

    @hotel = Properties::Hotel.new
    @hotel.build_properties_address

  end


  def create

    @hotel = Properties::Hotel.new(hotel_property_params)
    @hotel.users_id = current_user.id

    if @hotel.save
      flash[:notice] = 'Property created!'
      redirect_to @hotel
    else
      flash[:error] = 'Failed to save property!'
      render :action => 'new'
    end

  end

  def show

    @hotel = Properties::Hotel.find(params[:id])

  end

  def edit

    @hotel = Properties::Hotel.find(params[:id])
    puts @hotel.attributes

  end

  def update

    @hotel = Properties::Hotel.find(params[:id])
    if @hotel.update_attributes(hotel_property_params)
      flash[:notice] = 'Property updated!'
      redirect_to @hotel
    else
      flash[:error] = 'Failed to edit property!'
      render :edit
    end


  end

  def destroy
    @hotel = Properties::Hotel.find(params[:id])
    if @hotel.delete
      flash[:notice] = 'Property deleted!'
      redirect_to properties_hotels_path
    else
      flash[:error] = 'Failed to delete this property!'
      render :destroy
    end
  end


  private
  def hotel_property_params

    params.require(:properties_hotel).permit(:name, :email, :phone, :rooms,
                                             properties_address_attributes: [:street_1, :street_2, :zipcode, :city,
                                                                             :state, :country])

  end
end