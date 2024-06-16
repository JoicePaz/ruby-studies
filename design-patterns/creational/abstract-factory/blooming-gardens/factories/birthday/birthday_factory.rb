require_relative '../abstract_factory'
require_relative '../../products/flowers/birthday/birthday_flower'
require_relative '../../products/packagings/birthday/birthday_packaging'

class BirthdayFactory < AbstractFactory
    def create_flower
        BirthdayFlower.new
    end

    def create_packaging
        BirthdayPackaging.new
    end
end