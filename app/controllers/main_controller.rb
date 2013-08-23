class MainController < ApplicationController
  def index
  end

  def home
    render :home
  end

  def map
  end

  def profile
   respond_to do |format|
      format.html
      format.js
    end
  end

  def chat
    respond_to do |format|
      format.html
      format.js
    end
  end

  def results

  end

  def people
    respond_to do |format|
      format.html
      format.js
    end
  end

  def event
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new_event
    respond_to do |format|
      format.html
      format.js
    end
  end
end
