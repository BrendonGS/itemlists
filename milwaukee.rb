require "./store_item2.rb"
require "./swap.rb"

module StoreFront
  class Milwaukee < Store_Item
    include Swap
    def initialize(input_options)
      super(input_options)

    end 
  end
end