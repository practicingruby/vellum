module Vellum
  class Drawing
    def initialize(width, height)
      @width, @height = width, height
      @layers         = []
    end

    def <<(part)
      layers << part
    end

    attr_reader :width, :height, :layers
  end
end
