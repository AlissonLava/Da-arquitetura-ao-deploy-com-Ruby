require 'rails_helper'
RSpec.describe Restaurante do
    context 'testing total of products' do
        it 'returns total of products fo a specific restaurant' do
            restaurante = Restaurante.new(nome: 'res 1', adress: 'road1')
            product1=Product.create(restaurante: restaurante, name 'p1', value: 10)
            product2=Product.create(restaurante: restaurante, name 'p2', value: 13)

            expect(restaurante.total_of_products).to eq 2
        end
    end
end