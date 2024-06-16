require_relative '../abstract_factory'
require_relative '../../products/flowers/funeral/funeral_flower'
require_relative '../../products/packagings/funeral/funeral_packaging'

class FuneralFactory < AbstractFactory
    def create_flower
        FuneralFlower.new
    end

    def create_packaging
        FuneralPackaging.new
    end
end