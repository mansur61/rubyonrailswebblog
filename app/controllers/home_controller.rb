class HomeController < ApplicationController


	def index 
		@blogs = Blog.all
	end

	def about
      
    end
    
	def arama
		if params[:q].blank?  
	   	 redirect_to(root_path, alert: "Boş Sorgu") and return  
	  else  
		# @blogs=Blog.where("baslik LIKE ?", "%"+ params[:q]+ "%")
		@parameter = params[:q].downcase  
    	@results = Blog.all.where("lower(baslik) LIKE :search", search: "%#{@parameter}%")

		end
    end


    def show
       @blogs = Blog.find(params[:id])
    end

    def create
	   @blog = Blog.new(blog_params)

	   if @blog.save
	    	 redirect_to @blog
	    	 # render 'show'
	   else
	     render 'new'
	   end
	end
	private
	def blog_params
	    params.require(:blog).permit(:baslik,:icerik)
	end

end