class Cars::DocumentsController < ApplicationController
  def index
    @car = Car.find(params[:car_id])
    @documents = @car.documents
    @document = Document.new
    # @pdfdocs = @documents.select { |document| File.extname("#{document}") == ".pdf"}
    # @imgdocs = @documents.select { |document| File.extname("#{document}") == ".png" || ".jpeg"}

  end

  def new
    # @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    @car = Car.find(params[:car_id])
    @document.car = @car
    if @document.save
      redirect_to car_documents_path(@car), notice: 'Document has been added.'
    else
      render :index
    end
  end

  private

  def document_params
    params.require(:document).permit(:name, :document)
  end
end
