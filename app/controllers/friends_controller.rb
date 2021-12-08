class FriendsController < ApplicationController
 

  # GET /friends
  # GET /friends.json
  def index
    @friends = Friend.all
  end

  # GET /friends/1
  # GET /friends/1.json
  def show
  end

  # POST /friends
  # POST /friends.json
  def create
    user = User.find_by(id: friends_params[:user_id])
    friend = User.find_by(id: friends_params[:friend_id])
    if user.friends.include?(friend)
      render json: {error: "friendship already exists in the database"}
    else
      friend1 = user.friendships.build(friend_id: friend.id)
      friend2 = friend.friendships.build(friend_id: user.id)
      
      if friendship1.save && friendship2.save
        render json: {message: "friendship was successfully created"}
      else
        render json: {message: "friendship could not be saved"}
      end
    end
  end
  

  # PATCH/PUT /friends/1
  # PATCH/PUT /friends/1.json
  def update
    if @friend.update(friend_params)
      render :show, status: :ok, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  # DELETE /friends/1.json
  def destroy
    @friend.destroy
  end

  private
 
  def friends_params
    params.require(:friends).permit(:friend_id, :user_id)



end
