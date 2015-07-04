class Publish < ActiveRecord::Base
  has_one :author, dependent: :destroy
  has_many :comms, dependent: :destroy
end
