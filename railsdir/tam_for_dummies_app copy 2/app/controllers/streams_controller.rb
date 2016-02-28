class StreamsController < ApplicationController
  def index
    @stream = Stream.all.order("timestamp ASC")
  end

  def new
    @stream = Stream.new
    @topic = Topic.find params[:topic_id]
    @lecture = Lecture.find @topic.lecture_id
  end

  def create
    @topic = Topic.find params[:topic_id]
    stream_params = params.require(:stream).permit(:timestamp, :description)
    @stream = Stream.new stream_params
    @stream.topic = @topic
    @lecture = Lecture.find @topic.lecture_id
    @stream.lecture = @lecture
    @stream.timestamp = "#{Time.parse(DateTime.now.to_s)}"
    if @stream.save
      #render text: "#{@topic.title} #{@stream.lecture_id}"
        @topic = Topic.find params[:topic_id]
        redirect_to topic_stream_path(@topic, @stream), notice: "Stream created successfully"
    else
        flash[:alert] = @stream.errors.full_messages.join(", ")
        render :new
        #render "topics/#{@topics}/streams/new"
    end


  end

  def show

    @topic = Topic.find params[:topic_id]
    @lecture = Lecture.find @topic.lecture_id
    @stream = Stream.find params[:id]

  end
end
