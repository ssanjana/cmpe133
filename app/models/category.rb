class Category < ApplicationRecord
  has_many :products

  def self.search(search)
    if search
      self.joins(:products).where("title like ?", "%#{search}%")
    else
      self.all
    end
  end

end
