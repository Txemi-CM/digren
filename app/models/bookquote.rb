class Bookquote < ActiveRecord::Base
  attr_accessible :asin, :author, :published, :quote, :title, :tw_user
end
