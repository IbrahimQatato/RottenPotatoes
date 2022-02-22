class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end 
    def show
        id = params[:id]
        @movie = Movie.find(id)
    end
    def new
    end
    def create
        if (@movie = Movie.create(movie_params))
            redirect_to movies_path, :notice => "#{@movie.title} was successfully created."
        else
            flas[:alert] = "Movie #{@movie.title} could not be created: "+
                @movie.errors.full_messages.join(",")
            render 'new'
        end
    end

    def edit
        @movie = Movie.find params[:id]
    end
    
    def update
        @movie = Movie.find params[:id]
        @movie.update_attributes!(movie_params)
        flash[:notice] = "#{@movie.title} was successfully updated."
        redirect_to movie_path(@movie)
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        flash[:notice] = "Movie '#{@movie.title}' deleted."
        redirect_to movies_path
    end

    private
    def movie_params
        params.require(:movie)
        params[:movie].permit(:title, :rating, :release_date)
    end
end
