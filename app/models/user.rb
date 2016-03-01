class User < ApplicationRecord
  belongs_to :person
  has_many :jobs, dependent: :destroy
end
