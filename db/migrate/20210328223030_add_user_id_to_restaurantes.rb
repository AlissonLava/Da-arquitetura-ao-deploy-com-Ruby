class AddUserIdToRestaurantes < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurantes, :user_id, :integer
  end
end
