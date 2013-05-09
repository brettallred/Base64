class Base64Controller < ApplicationController
   
  def encode
    @charsets = Charset.all
    @convert = Convert.new(params[:convert])
    @convert.encode
  end
  
  def decode
    @charsets = Charset.all
    @convert = Convert.new(params[:convert])
    @convert.decode
  end
end
