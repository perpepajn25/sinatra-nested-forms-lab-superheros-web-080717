require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :team
  end

  post '/teams' do
    @team = Team.new(params[:team])
    @superhero1 = Superhero.new(params[:team][:member][0])
    @superhero2 = Superhero.new(params[:team][:member][1])
    @superhero3 = Superhero.new(params[:team][:member][2])
    erb :super_hero
  end

end
