require_relative "../lib/pig_latin"
describe PigLatin do
  subject { described_class.new(english).translate }

  context "given a word that starts with a consonant" do
    let(:english) { "hello" }

    it "move the first letter to the end and add 'ay'" do
      expect(subject).to eq "ellohay"
    end
  end

  context "given a word that starts with a vowel" do
    let(:english) { "apples" }
    it "add 'ay'" do
      expect(subject).to eq "applesay"
    end
  end

  context "given a phrase with multiple words" do
    let(:english) { "hello apples" }
    it "translates all of the words" do
      expect(subject).to eq "ellohay applesay"
    end
  end

  context "given a word that is capitalized" do
    let(:english) { "Hello" }
    it "preserves capitalization" do
      expect(subject).to eq "Ellohay"
    end
  end

  context "given a word that is capitalized" do
    let(:english) { "Eat" }
    it "preserves capitalization" do
      expect(subject).to eq "Eatay"
    end
  end

  context "given a sentence with multiple words and punctuation" do
    let(:english) { "hello...  apples?!" }
    it "translates all of the words and preserve the non-words characters" do
      expect(subject).to eq "ellohay...  applesay?!"
    end
  end
end
