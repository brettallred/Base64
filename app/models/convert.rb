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
      #sur_type = "UTF-8"
      des_type = Charset.find(self.convert_type.to_i).caption
      #ec = Encoding::Converter.new(sur_type, des_type)
      #converted_string = ec.convert(encode_string).dump
      #converted_string = encode_string.encode(des_type)
      self.decode_string = Base64.encode64(encode_string)
      self.decode_string = self.decode_string.encode(des_type)  
    end
  end
  
  def decode
    unless decode_string.blank?
      #sur_type = "UTF-8"
      des_type = Charset.find(self.convert_type.to_i).caption
      #ec = Encoding::Converter.new(sur_type, des_type)
      #converted_string = ec.convert(decode_string).dump
      converted_string = decode_string.encode(des_type)
      self.encode_string = Base64.decode64(converted_string)
    end
  end

  def persisted?
    false
  end
  
end

