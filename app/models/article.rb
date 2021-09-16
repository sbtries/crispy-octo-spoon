class Article < ApplicationRecord
    has_many :comments

    validates :title, presence: true #must be present
    validates :body, presence: true, length: { minimum: 10 } # must be present & min length set
  end
  