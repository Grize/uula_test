# frozen_string_literal: true

#:nodoc:
class SequenceCreator
  attr_reader :element

  def initialize(first_element)
    @element = first_element.to_s
  end

  def next
    result = sequence_builder(element)
    @element = result
    puts result
    self
  end

  private

  def sequence_builder(element)
    element.gsub(/(.)\1*/) { |s| s.size.to_s + s[0] }
  end
end
