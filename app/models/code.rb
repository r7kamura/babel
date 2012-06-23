class Code < ActiveRecord::Base
  attr_accessible :entry_id, :gist_id, :language

  GIST_URL_BASE = "https://gist.github.com/"

  def url
    GIST_URL_BASE + gist_id
  end
end
