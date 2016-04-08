require_relative "../lib/roman"
describe Roman do
  subject { described_class.new(number).translate }
  context "translate I" do
    let(:number) { "I" }
    it "results 1" do
      expect(subject).to eq 1
    end
  end

  context "translate V" do
    let(:number) { "V" }
    it "results 5" do
      expect(subject).to eq 5
    end
  end

  context "IV" do
    let(:number) { "IV" }
    it { expect(subject).to eq 4 }
  end

  context "IX" do
    let(:number) { "IX" }
    it { expect(subject).to eq 9 }
  end
  context "XL" do
    let(:number) { "XL" }
    it { expect(subject).to eq 40 }
  end
  context "XC" do
    let(:number) { "XC" }
    it { expect(subject).to eq 90 }
  end

  context "MCMLIV" do
    let(:number) { "MCMLIV" }
    it { expect(subject).to eq 1954 }
  end

  context "MCMXC" do
    let(:number) { "MCMXC" }
    it { expect(subject).to eq 1990 }
  end

  context "MMXIV" do
    let(:number) { "MMXIV" }
    it { expect(subject).to eq 2014 }
  end

  context "CMXCIX" do
    let(:number) { "CMXCIX" }
    it { expect(subject).to eq 999 }
  end
end
