class User < ApplicationRecord
  has_many :ingestions, dependent: :destroy
end
