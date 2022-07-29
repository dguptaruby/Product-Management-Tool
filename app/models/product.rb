class Product < ApplicationRecord
  has_many :properties, dependent: :destroy
end
