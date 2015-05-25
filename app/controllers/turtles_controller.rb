class TurtlesController < ApplicationController
  def show
    @kame = Turtle.first
  end

  def act
    kame = Turtle.first
    case params[:event]
    when 'walk' then kame.walk!
    when 'sleep' then kame.sleep!
    when 'push' then kame.push!
    when 'hide' then kame.hide!
    when 'appear' then kame.appear!
    end
    redirect_to turtles_show_path
  end

end
