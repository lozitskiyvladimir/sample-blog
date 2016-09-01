class Article < ActiveRecord::Base



  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates_length_of :title, maximum: 140

  validates :text, presence: true
  validates_length_of :text, maximum: 4000

  def subject
    title
  end

  def last_comment
      comments.last
  end

end
