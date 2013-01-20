class XmlDocument

  def hello(options={})
    "<hello#{add_if_name(options)}/>"
  end

  def method_missing(name)
    tag(name) 
  end

  def tag(name)
    "<#{name}/>"
  end

private
  def add_if_name(options)
    " name=\'#{options[:name]}\'" unless options.empty?
  end

end