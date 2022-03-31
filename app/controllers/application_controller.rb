class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to Sprout and Spruce's Shelter, currently under construction" }.to_json
  end
  #get request for shelter
  get '/shelters' do 
    shelters = Shelter.all
    shelters.to_json
  end

  #get request for all animals
  get '/animals' do 
    animals = Animal.all
    animals.to_json
  end

  #get request for specific animal
  get '/animals/:id' do
    animal = Animal.find(params[:id])
    animal.to_json
  end

  #get request for all comments
  get '/comments' do 
    comments = Comment.all
    comments.to_json
  end

    #get request for specific comment
    get '/comments/:id' do 
      comments = Comment.find(params[:id])
      comments.to_json
    end

  #get request for all adopters
  get '/adopters' do 
    adopters = Adopter.all
    adopters.to_json
  end

  #delete request for specific comment
  delete '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end

  #post/create request for new adopter
  post '/adopters' do
    adopter = Adopter.create(
    adopter_name: params[:adopter_name],
    email: params[:email],
    adopter_phone: params[:adopter_phone]
    )
    adopter.to_json
  end


  #post/create request for new comment
  post '/comments' do
    comment = Comment.create(
      comments: params[:comments],
      animal_id: params[:animal_id],
      adopter_id: params[:adopter_id]
    )
    comment.to_json
  end

  #patch/update request for specific comment
  patch '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.update(
      comments: params[:comments]
    )
    comment.to_json
  end

end
