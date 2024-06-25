require 'ruby-enum'

class MilkType
  include Ruby::Enum

  define :NONE, 'none'
  define :REGULAR, 'regular'
  define :SOY, 'soy'
  define :ALMOND, 'almond'
end
