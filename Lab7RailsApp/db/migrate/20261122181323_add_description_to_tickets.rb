class AddDescriptionToTickets < ActiveRecord::Migration[8.1]
  def change
    add_column :tickets, :description, :text
  end
end
