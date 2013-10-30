class Article < ActiveRecord::Base
attr_accessible :headline, :body, :source, :location, :link

has_one :location

def previous_post
  self.class.first(:conditions => ["headline < ?", headline], :order => "headline desc")
end

def next_post
  self.class.first(:conditions => ["headline > ?", headline], :order => "headline asc")
end

  
end
