require "soap/wsdlDriver"

class EuropeanVATNumberValidation
  SERVICE_WSDL = "http://ec.europa.eu/taxation_customs/vies/api/checkVatPort?wsdl"
  
  DRIVER = SOAP::WSDLDriverFactory.new(SERVICE_WSDL).create_rpc_driver
  
  def self.check(options)
    response = DRIVER.checkVat(:countryCode => options[:country], :vatNumber => options[:number])
    valid = response.valid == "true"
    stuff = {}
    stuff[:name] = response.name
    stuff[:address] = response.address
    
    return valid, stuff
  end
  
end