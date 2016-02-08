require 'muddy/models/active_record_model_extension'

module Muddy
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    module ClassMethods
      def inherited(kls)
        super
        kls.send(:include, Muddy::ActiveRecordModelExtension) if kls.superclass == ::ActiveRecord::Base
      end
    end
    
    included do 
      self.descendants.each do |kls|
        kls.send(:include, Muddy::ActiveRecordModelExtension) if kls.superclass == ::ActiveRecord::Base
      end
    end 

  end
end
