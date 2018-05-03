require_relative 'manufacturer_company'
require_relative 'validation'

class Wagon
  include ManufacturerCompany
  include Validation
  
  attr_reader :number

  NUMBER_FORMAT = /^([а-я]|[a-z]){2}\d{2}$/i
  
  def initialize(number)
    @number = number
    validate!
  end

  private

  def valid?
    self.errors << "Номер имеет неправильный формат" if number !~ NUMBER_FORMAT
  
    self.errors.size.zero?
  end

end
