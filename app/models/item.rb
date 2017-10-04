class Item < ApplicationRecord
  belongs_to :envoice
  belongs_to :product

  validates :amount, presence: :true

  def total
    self.amount * self.product.price
  end

end
