class CreateAluguels < ActiveRecord::Migration[5.2]
  def change
    create_table :aluguels do |t|
      t.decimal :preco, :decimal
      t.boolean :status
      t.datetime :data_retirada
      t.datetime :data_devolucao
      t.integer :carro_id
      t.integer :cliente_id

      t.timestamps
    end
  end
end
