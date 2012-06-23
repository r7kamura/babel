module EntriesHelper
  def gist_embed_tag(code)
    javascript_include_tag "#{code.url}.js"
  end
end
