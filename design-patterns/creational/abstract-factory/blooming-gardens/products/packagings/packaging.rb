class Packaging
    def material
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end