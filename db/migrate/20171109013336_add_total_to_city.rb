class AddTotalToCity < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :total, :string
  end
end
