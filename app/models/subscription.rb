class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea

  enum status: [:active, :cancelled]

  enum frequency: {
    weekly: 0,
    monthly: 1,
    annually: 2
  }

  validates_presence_of :title,
                        :price,
                        :status,
                        :frequency,
                        :customer_id,
                        :tea_id
end
