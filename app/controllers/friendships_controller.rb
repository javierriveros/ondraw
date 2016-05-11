class FriendshipsController < ApplicationController
    before_action :find_friend
    
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
    
    private
        def find_friend
            @friend = User.find(params[:friend_id])
        end
end
