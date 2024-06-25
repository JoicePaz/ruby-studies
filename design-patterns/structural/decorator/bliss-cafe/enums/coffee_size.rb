require 'ruby-enum'

class CoffeeSize
  include Ruby::Enum

  define :SMALL, 'small'
  define :MEDIUM, 'medium'
  define :LARGE, 'large'
end
