require_relative "../lib/summer"

describe Summer do
  subject { described_class.new(arr).pairs }
  context "with empty array" do
    let(:arr) { [] }
    it { expect(subject).to eq [] }
  end

  context "with single item array" do
    let(:arr) { [1] }
    it { expect(subject).to eq [] }
  end

  context "with valid pair array" do
    let(:arr) { [95, 5] }
    it { expect(subject).to eq [[95, 5]] }
  end

  context "with valid pair array with extras" do
    let(:arr) { [95, 5, 95, 6] }
    it { expect(subject).to eq [[95, 5]] }
  end

  context "with multiple valid pair arrays with extras" do
    let(:arr) { [1, 99, 49, 51, 2, 2] }
    it { expect(subject).to eq [[1, 99], [49, 51]] }
  end
end
