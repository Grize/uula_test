# frozen_string_literal: true

RSpec.describe SequenceCreator do
  it 'return right result' do
    expect do
      described_class.new('1').next.next
    end.to output("11\n21\n").to_stdout
  end

  it 'always return 22' do
    expect do
      described_class.new('22').next.next.next
    end.to output("22\n22\n22\n").to_stdout
  end
end
