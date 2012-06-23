class CodesController < ApplicationController
  def create
    code = Code.create(params[:code])
  end
end
