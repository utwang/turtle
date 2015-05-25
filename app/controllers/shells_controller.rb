class ShellsController < ApplicationController
  def show
    @shells = Turtle.first.shell.versions
  end

  def edit
    @shell = Turtle.first.shell
  end

  def update
    @shell = Turtle.first.shell
    shell_params = params.require(:shell).permit(:color, :age)
    @shell.update_attributes(shell_params)
    redirect_to turtles_show_path
  end
end
