class Product < ApplicationRecord
  belongs_to :category
  #ADDED dependency to line_items and a method
  has_many :line_items
  

  before_destroy :ensure_not_referenced_by_any_line_item

  def self.search(search)
    if search
      self.where("title like ?", "%#{search}%")
    else
      self.all
    end
  end

  #ADDED a private method
  private
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items Present')
        return false
      end
    end
end
