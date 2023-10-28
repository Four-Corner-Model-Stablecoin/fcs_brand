# frozen_string_literal: true

class WithdrawalRequest < ApplicationRecord
  validates :request_id, presence: true

  belongs_to :issuer, optional: true
  belongs_to :acquirer, optional: true

  enum status: {
    created: 0,
    completed: 1,
    transfering: 2,
    failed: 9
  }
end