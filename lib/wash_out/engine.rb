module WashOut
  class Engine < ::Rails::Engine
    class << self
      attr_accessor :namespace
      attr_accessor :snakecase, :snakecase_input, :camelize_wsdl
      attr_accessor :wsse_auth, :wsse_user, :wsse_pass
    end

    self.namespace = 'urn:WashOut'
    self.snakecase = nil

    self.snakecase_input = false
    self.camelize_wsdl   = false

    config.wash_out = ActiveSupport::OrderedOptions.new

    initializer "wash_out.configuration" do |app|
      app.config.wash_out.each do |key, value|
        self.class.send "#{key}=", value
      end

      unless self.class.snakecase.nil?
        raise "Usage of wash_out.snakecase is deprecated. You should use wash_out.snakecase_input and wash_out.camelize_wsdl"
      end
    end
  end
end
