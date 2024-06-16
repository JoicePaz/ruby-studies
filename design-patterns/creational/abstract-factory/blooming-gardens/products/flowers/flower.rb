class Flower
    def type
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end