class EventsController < ApplicationController

  def index
    @lectures = Lecture.all
    @topics = Topic.where("lecture_id = ?", Lecture.first.id)
  end

  def show
    @topic = Topic.find_by("id = ?", params[:trip][:topic_id])
  end

  def update_topics
    @topics = Topic.where("lecture_id = ?", params[:lecture_id])
    respond_to do |format|
      format.js
    end
  end
  
end
