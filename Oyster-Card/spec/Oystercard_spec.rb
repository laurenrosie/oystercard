require 'oystercard'

describe Oystercard do
  it 'Has default balance of 0 when created' do
    expect(subject.balance).to eq 0
  end
end
