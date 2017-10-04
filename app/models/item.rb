class Item < ApplicationRecord
  belongs_to :envoice
  belongs_to :product

  def total
    self.amount * self.product.price
  end

end
