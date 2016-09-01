require 'spec_helper'


describe Article do
  describe "validation" do
    it {should validate_presence_of (:title)}
    it {should validate_presence_of (:text)}
# I've used ensure_length_of becouse it works in latest versions
    it { should ensure_length_of(:title).is_at_most(140) }
    it { should ensure_length_of(:text).is_at_most(4000) }

  end

  describe "associations" do
    it { should have_many(:comments) }
  end

  describe "#subject" do
    it "returns the articles title" do
      article = create(:article, title: 'Lorem Ipsum')

      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe '#last_comment' do
    it 'returns last_comment' do
      article = create(:article_with_comments)

      expect(article.last_comment.body).to eq 'comment body 3'
    end
  end
end
