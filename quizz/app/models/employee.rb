class Employee < ActiveRecord::Base
  validates :empid, presence: true,
                    length: { minimum: 6 }
end
