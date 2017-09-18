class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @lenses = Lens
      .joins(:specs)
      .includes([:specs])
    render 'index'
  end
end
