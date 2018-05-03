module Validation
  
  attr_reader :errors
  
  private
  
  attr_writer :errors
  
  def validate!
    @errors = []
    raise errors.join(',') unless valid?
  end
end