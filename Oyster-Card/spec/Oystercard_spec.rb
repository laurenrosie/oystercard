require 'oystercard'

describe Oystercard do
  it 'Has default balance of 0 when created' do
    expect(subject.balance).to eq 0
  end
  it 'Can Top Up' do
    expect(subject).to respond_to(:top_up).with(1).argument
  end
  it 'Tops up by the amount provided' do
    subject.top_up(5)
    expect(subject.balance).to eq 5
  end

end
