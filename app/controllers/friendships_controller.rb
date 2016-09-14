class FriendshipsController < ApplicationController
    before_action :find_friend, except: [:index, :update]
    before_action :find_friendship, only: :update
    
    def index
        @pending_friendships = current_user.followers.pending
        @accepted_friendships = current_user.followers.active
        @pending_requests = current_user.friendships.pending
    end
    
    def create
        friendship = Friendship.new(user: current_user, friend: @friend)
        respond_to do |format|
            if friendship.save
                format.html { redirect_to @friend }
                format.js
            else
                format.html { redirect_to @friend, notice: "Hubo un error al crear la amistad" }
                format.js
            end
        end
    end
    
    def update
        if params[:status] == "1"
            @friendship.accepted!
        elsif params[:status] == "0"
            @friendship.rejected!
        end
        respond_to do |format|
            format.html { redirect_to friendships_path }
        end
    end
    
    private
        def friendship_params
            params.require(:friendship).permit(:status)
        end
        
        def find_friendship
            @friendship = Friendship.find(params[:id])
        end
end
