class Publish < ActiveRecord::Base
  before_save :senseless
  has_one :author, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :topic, presence: true
	validates :text, presence: true
  def senseless
    if topic == "stupids"
      self.text = "no sense"
    end
  end
end
