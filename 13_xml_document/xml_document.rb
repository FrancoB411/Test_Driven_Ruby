require "rexml/document"

class XmlDocument

  def method_missing(name, *args, &block) 
    tag = "<#{name}#{add_if_name(args)}"
    if block_given?
      tag + ">#{yield}</#{name}>"
    else
      tag + "/>"
    end
  end

private
  def add_if_name(options)
    unless options.empty?
      attribute = options[0]
      name = attribute.keys.first
      value = attribute[name]
      " #{name}=\'#{value}\'"
    end 
  end

end