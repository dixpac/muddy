module Muddy
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    included do
      eval <<-RUBY
        def self.page(num = nil)
          num = num.to_i - 1
          if num < 0
            num = 0
          end 
          puts num
          limit(30).offset(30 * num)
        end
      RUBY

    end

  end
end
