class Person
  def initialize(params = nil)
    if params    
      params.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
      end
    end
  end
end
