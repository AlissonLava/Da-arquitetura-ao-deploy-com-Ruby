class CreateRestaurantes < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.text :address

      t.timestamps
    end
  end
end
