class Code < ActiveRecord::Base
  attr_accessible :entry_id, :url, :language

  belongs_to :entry
end
