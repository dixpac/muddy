module Muddy
  class Railtie < ::Rails::Railtie
    initializer 'muddy' do |_app|
      ActiveSupport.on_load(:active_record) do
        #require 'muddy/models/active_record_extension'
        require 'muddy/models/active_record_model_extension'
        #::ActiveRecord::Base.send :include, Muddy::ActiveRecordExtension
        ::ActiveRecord::Base.send :include, Muddy::ActiveRecordModelExtension
      end 
    end
  end
end
