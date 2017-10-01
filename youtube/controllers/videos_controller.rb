class VideosController < Sinatra::Base

	# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  #Show All
  get '/' do
  	@title = "Videos"
  	@videos = Video.all
  	erb :'videos/index'
  end

  #New Form
  get '/new' do
  	@video = Video.new
  	erb :'videos/new'
  end

  #Show One
  get '/:id' do
  	id = params[:id].to_i
  	@video = Video.find(id)
  	erb :'videos/show'
  end

  #Submit New
  post '/' do
  	video = Video.new
  	video.title = params[:title]
  	video.des = params[:des]
  	video.url = params[:url]
  	video.img = params[:img]
  	video.save
  	redirect "/"
  end

  #Edit Form
  get '/:id/edit' do
  	id = params[:id].to_i
  	@video = Video.find(id)
  	erb :'videos/edit'
  end

  #Submit Edit
  put '/:id' do
  	id = params[:id].to_i
  	video = Video.find(id)
  	video.title = params[:title]
  	video.des = params[:des]
  	video.url = params[:url]
  	video.img = params[:img]
  	video.save
  	redirect "/"
  end

  #Delete
  delete '/:id' do
  	id = params[:id].to_i
  	Video.destroy(id)
  	redirect "/"
  end

end