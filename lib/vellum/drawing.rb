module Vellum
  class Drawing
    def initialize(width, height)
      @width, @height = width, height

      @parts = []
    end

    def <<(part)
      parts << parts
    end

    attr_reader :width, :height, :parts
  end
end
