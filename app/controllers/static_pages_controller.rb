class StaticPagesController < ApplicationController
  def calendar
    @tasks = Tasks.all
  end
  def about
  end
end
