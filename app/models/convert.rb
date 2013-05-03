require 'base64'

class Convert
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  
  attr_accessor :encode_string
  attr_accessor :decode_string
  attr_accessor :convert_type
  
  def initialize(attributes = {})
    unless attributes.blank?
      attributes.each do |key, value|
        public_send("#{key}=", value)
      end
    end
  end
  
  def encode
    self.decode_string = Base64.encode64(encode_string) unless encode_string.blank?
  end
  
  def decode
    self.encode_string = Base64.decode64(decode_string) unless decode_string.blank?
  end
  
  def process
    if self.convert_type == "ENCODING"
      self.encode
    elsif self.convert_type == "DECODING"
      self.decode
    end
  end
  
  def persisted?
    false
  end
  
end

