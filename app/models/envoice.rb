class Envoice < ApplicationRecord
  belongs_to :customer
  has_many :items

  def total
    tot = 0
    self.items.each do |item|
      tot += item.total
    end
    return tot
  end

end
