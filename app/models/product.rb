class Product < ApplicationRecord
  belongs_to :category

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
end
