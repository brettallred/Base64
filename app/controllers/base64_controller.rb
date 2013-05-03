class Base64Controller < ApplicationController
   
  def encode
    @convert = Convert.new(params[:convert])
    @convert.encode
  end
  
  def decode
    @convert = Convert.new(params[:convert])
    @convert.decode
  end
end
