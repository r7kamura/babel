class CodesController < ApplicationController
  def create
    code = Code.create_with_dirty_language(params[:code])
    redirect_to code.entry
  end
end
