class Base64Controller < ApplicationController
  
  def index
    @convert = Convert.new(params[:convert])
    @convert.process
  end
  
end
