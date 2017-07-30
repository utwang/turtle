namespace :dev do
  desc 'generate data'
  task data_populate: :environment do
    COLORS = [:green, :red, :white, :blue, :yellow, :gray]
    (0..30).each do |n|
      t = Turtle.create(name: "kame_#{n}")
      t.save
      COLORS.take(rand(1..6)).each do |c|
        t.eggs.create(color: c)
      end
    end
  end
end
