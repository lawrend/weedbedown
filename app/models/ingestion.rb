class Ingestion < ApplicationRecord
  belongs_to :user

  validates :dateAndTime, presence: true

  VALID_METHODS = ['smoke', 'vape', 'drink', 'gummie', 'chocolate']

  validates :method, presence: true, inclusion: { in: VALID_METHODS }

end
