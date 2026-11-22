class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :authorize_ticket!, only: [:edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = current_user.tickets.build(ticket_params)

    if @ticket.save
      redirect_to @ticket, notice: "Квиток успішно створено."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to @ticket, notice: "Квиток успішно оновлено."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, notice: "Квиток успішно видалено."
  end

  private

  def ticket_params
    params.require(:ticket).permit(
      :movie_title,
      :genre,
      :show_time,
      :seat,
      :price,
      :description,
      :image
    )
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def authorize_ticket!
    unless current_user.admin? || @ticket.user == current_user
      redirect_to tickets_path, alert: "У вас немає прав для виконання цієї дії."
    end
  end
end