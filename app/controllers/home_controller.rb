class HomeController < ApplicationController
  def index
    @tuitions = Tuition.all
  end
end
