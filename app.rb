require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/ ' do
      phrase_from_user = params[:user_phrase]
      @piglatinized = PigLatinizer.new(phrase_from_user)
      erb :display
    end

end
