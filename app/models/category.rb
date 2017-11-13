class Category < ApplicationRecord
  has_many :products

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end

end
