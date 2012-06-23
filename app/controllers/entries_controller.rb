class EntriesController < ApplicationController
  before_filter :prepare_entry, :only => :show

  def index
    @entries = Entry.order("created_at DESC").includes(:codes)
  end

  def show
  end

  def new
    @entry = Entry.new
  end

  def create
    if @entry = Entry.create(params[:entry])
      redirect_to @entry
    else
      redirect_to entries_path
    end
  end

  private

  def prepare_entry
    @entry = Entry.find_by_id(params[:id]) or
      redirect_to entries_path
  end
end
