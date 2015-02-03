class Author < ActiveRecord::Base

  has_many :writings
  has_many :articles, :through => :writings

end
