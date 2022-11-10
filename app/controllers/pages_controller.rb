class PagesController < ApplicationController
  def home

  end

  def sports

  end

  def politique

  end

  def search
    countries = find_country(params[:country])
    unless countries
      flash[:alert] = 'Country not found'
      return render action: :home
    end
  end


private

  def find_country
  end
end
