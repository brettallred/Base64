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
    unless encode_string.blank?
      des_type = Charset.find(self.convert_type.to_i).caption
      self.decode_string = Base64.strict_encode64(encode_string)
      self.decode_string = self.decode_string.encode(des_type)  
    end
  end
  
  def decode
    unless decode_string.blank?
      des_type = Charset.find(self.convert_type.to_i).caption
      converted_string = decode_string.encode(des_type)
      self.encode_string = Base64.strict_decode64(converted_string)
    end
  end

  def persisted?
    false
  end
  
end

