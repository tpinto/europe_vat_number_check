require 'european_vat_number_validation'

class Integer
  def valid_european_vat_number?(country)
    EuropeanVATNumberValidation.check(:country => country, :number => self.to_s)
  end
end