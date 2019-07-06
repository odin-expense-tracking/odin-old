class HomeController < ApplicationController
  def index
  end

  def terms
  end

  def privacy
  end

  def get_started
  end

  def pricing
  end

  def components
    @component = params[:component] || 'alerts'
  end

  #   Components rendering actions
  def badges

  end

end
