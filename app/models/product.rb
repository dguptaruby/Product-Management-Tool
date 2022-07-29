class Product < ApplicationRecord
  has_many :properties, dependent: :destroy
  validates :name,  presence: true, :uniqueness => true
  validates :upc, format: { with: /\A\d+\z/, message: "Integer only. No String allowed." }
  accepts_nested_attributes_for :properties
end
