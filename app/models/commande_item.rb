class CommandeItem < ApplicationRecord
  belongs_to :order
  belongs_to :tableau
end
