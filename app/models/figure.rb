class Figure < ActiveRecord::Base 
  has_many :figure_titles
  has_many :titles, through: :figure_titles
  has_many :landmarks

  def slug 
  	self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
     self.all.find{|item| item.slug == slug}
  end

end 