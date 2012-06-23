module EntriesHelper
  def gist_embed_tag(code)
    javascript_include_tag "#{code.url}.js"
  end

  def label_class_name(str)
    names = [
      "",
      "label-success",
      "label-important",
      "label-warning",
      "label-important",
      "label-info",
      "label-inverse",
    ]
    names[str.to_i(36) % names.size]
  end
end
