class PostsController < ApplicationController
    def new 
    #사용자가 데이터를 입력할 화면
    #자동으로 액션을 불러와서 보여줘라
        
    end
    
    def create
        #입력받은 데이터를 db에 저장하는 액션.
        @post = Post.new
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        
        
        redirect_to "/posts/show/#{@post.id}"
    end
    
    # Read
    def index #모든 포스트를 보여주는 뷰
        @posts = Post.all
    end
    
    def show #하나의 포스트를 보여주는 뷰
        @post = Post.find(params[:post_id])
    end
    
    # Delete
    def destroy
        @post = Post.find(params[:post_id])
        @post.destroy
        redirect_to '/'
    end
    
    #update
    def edit  #사용자가 데이터를 입력할 화면
        @post = Post.find(params[:post_id])
    end
    
    def update  #입력받은 데이터를 실제 db에 반영할 액션
        @post = Post.find(params[:post_id]) #게시글을 찾는 액션
        #실제 수정할 코드가 들어갈 자리
        
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        
        redirect_to "/posts/show/#{@post.id}"

    end
    
    
end