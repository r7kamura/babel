class Entry < ActiveRecord::Base
  attr_accessible :title

  has_many :codes, :order => "created_at DESC"

  validates :title, :presence => true

  def modified_on
    if code = codes.first
      code.created_at.to_date
    else
      created_at.to_date
    end
  end
end
