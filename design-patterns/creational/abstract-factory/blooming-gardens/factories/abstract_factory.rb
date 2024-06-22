class AbstractFactory
  def create_flower
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
    
  def create_packaging
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end