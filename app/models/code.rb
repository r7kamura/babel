class Code < ActiveRecord::Base
  attr_accessible :entry_id, :url, :language

  belongs_to :entry

  validates :url, :presence => true
  validates :language, :presence => true

  def self.create_with_dirty_language(attributes)
    if dirty = attributes.delete(:language_dirty)
      attributes[:language] = canonicalize_language(dirty)
    end
    create(attributes)
  end

  def self.canonicalize_language(dirty)
    dirty.camelize.gsub(/\s/, "")
  end
end
