class Search < ApplicationRecord
  def result
      @result ||= find_result
  end

  private
      
    def find_result
      result = Product.all
      result = result.where("title like ?", "%#{keywords}%") if keywords.present?
      result = result.where(category_name: category_name) if category_name.present?
      result = result.where("price >= ?", min_price) if min_price.present?
      result = result.where("price <= ?", max_price) if max_price.present?
      result
    end
end