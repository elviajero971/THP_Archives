class GossipLikesController < ApplicationController
  before_action :find_gossip


  def create
    if GossipLike.create(user_id: current_user.id,gossip_id: params[:id] )
      flash[:success] = "Votre like a été pris en compte !"
      redirect_to :controller => 'gossips', :action => 'show', :id => @gossip.id
    else
      flash[:danger] = "Problème de like!"
      redirect_to :controller => 'gossips', :action => 'show', :id => @gossip.id
    end
  end

  def destroy
    if !(already_liked?)
      flash[:danger] = "Vous ne pouvez pas unliker!"
    else
      GossipLike.destroy(@id)
      flash[:success] = "Vous avez bien unliker!"
    end
    redirect_to :controller => 'gossips', :action => 'show', :id => @gossip.id
  end

  private

  def find_gossip
    @gossip = Gossip.find(params[:id])
  end

  def already_liked?
    @like = GossipLike.where(user_id: current_user.id, gossip_id: params[:id])
    @id = @like.first.id
    !@like.nil?
  end

end
