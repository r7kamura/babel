class CodesController < ApplicationController
  def create
    code = Code.create(params[:code])
    redirect_to code.entry
  end
end
