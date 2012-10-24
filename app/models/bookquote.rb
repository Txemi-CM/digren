class Bookquote < ActiveRecord::Base
  attr_accessible :asin, :author, :published, :quote, :title, :tw_user
  validates :author, presence: true, length: { maximum: 80 }
  validates :quote, presence: true


end
