class Taker < ActiveRecord::Base
  has_many(:answers)
  belongs_to(:survey)
end
