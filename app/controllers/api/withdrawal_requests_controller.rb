# frozen_string_literal: true

module Api
  class WithdrawalRequestsController < ApplicationController
    def show
      request = WithdrawalRequest.find_by(request_id: params[:id])
      # transaction = request.withdrawal_transaction

      render json: { request: }
    end
  end
end
