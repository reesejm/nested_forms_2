class Food < ApplicationRecord
  belongs_to :shopping_list, optional: true
end
