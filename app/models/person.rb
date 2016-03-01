class Person < ApplicationRecord
  has_many :clients, dependent: :destroy
  has_many :users, dependent: :destroy
end
