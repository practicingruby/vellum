require "minitest/autorun"
require_relative "../lib/vellum/drawing"

describe Vellum::Drawing do
  it "must have a width and a height" do
    drawing = Vellum::Drawing.new(300,400)

    drawing.width.must_equal(300)
    drawing.height.must_equal(400)
  end

  it "must have layers" do
    drawing = Vellum::Drawing.new(300,400)
    drawing << Object.new << Object.new << Object.new

    drawing.layers.count.must_equal(3)
  end
end
