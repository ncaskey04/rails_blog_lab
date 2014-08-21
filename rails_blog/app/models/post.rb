class Post < ActiveRecord::Base
  has_many :linkers
  has_many :tags , :through => :linkers
end
