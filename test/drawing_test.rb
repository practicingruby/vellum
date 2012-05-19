require "minitest/autorun"
require_relative "../lib/vellum/drawing"

describe Vellum::Drawing do
  it "must have a width and a height" do
    drawing = Vellum::Drawing.new(300,400)

    drawing.width.must_equal(300)
    drawing.height.must_equal(400)
  end

  # FIXME: This is a crappy test.
  it "must have parts" do
    drawing = Vellum::Drawing.new(300,400)
    drawing << Object.new << Object.new << Object.new

    drawing.parts.count.must_equal(3)
  end
end

=begin
drawing = Vellum::Drawing.new(300,400)
pen     = Vellum::Pen.new(:color => :red)

pen.ink(drawing) do
  line(top_left,     bottom_right)
  line(bottom_left,  top_right)
end
=end
