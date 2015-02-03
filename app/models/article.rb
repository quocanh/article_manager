class Article < ActiveRecord::Base

  has_many :writings
  has_many :authors, :through => :writings

end
