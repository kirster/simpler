class TestsController < Simpler::Controller

  def index
    render plain: "Index"
  end

  def create
    render 'index'
  end

  def show
    @test = params
  end

end
