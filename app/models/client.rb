class Client < ApplicationRecord
  belongs_to :person
  has_many :jobs, dependent: :destroy
end
