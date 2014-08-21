class Tag < ActiveRecord::Base
  has_many :linkers
  has_many :posts, :through => :linkers
end
