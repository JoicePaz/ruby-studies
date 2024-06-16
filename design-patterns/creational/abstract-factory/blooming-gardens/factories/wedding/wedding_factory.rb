require_relative '../abstract_factory'
require_relative '../../products/flowers/wedding/wedding_flower'
require_relative '../../products/packagings/wedding/wedding_packaging'

class WeddingFactory < AbstractFactory
    def create_flower
        WeddingFlower.new
    end

    def create_packaging
        WeddingPackaging.new
    end
end