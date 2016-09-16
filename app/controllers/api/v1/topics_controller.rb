class Api::V1::TopicsController < Api::V1::BaseController
  before_action :authenticate_user, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

  def index
    topics = Topic.all
    render json: topics.to_json(include: :posts), status: 200
  end

  def show
    topic = Topic.find(params[:id])
     render json: topic.to_json(include: :posts), status: 200
  end

  def update
    topic = Topic.find(params[:id])

     if topic.update_attributes(topic_params)
       render json: topic, status: 200
     else
       render json: {error: "Topic was updated successfully.", status: 400}, status: 400
     end
   end

   def create
     topic = Topic.new(topic_params)

     if topic.valid?
       topic.save!
       render json: topic, status: 201
     else
       render json: {error: "Topic was not created. Please try again. ", status: 400}, status: 400
     end
   end

   def destroy
     topic = Topic.find(params[:id])

   if topic.destroy
     render json: {message: "Topic was deleted successfully.", status: 200}, status: 200
   else
     render json: {error: "There was an error in deleting the topic. Please try again", status: 400}, status: 400
   end
 end


   private
   def topic_params
     params.require(:topic).permit(:name, :description, :public)
   end
end
