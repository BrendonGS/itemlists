

module StoreFront
  class Store_Item
    attr_reader :type, :color, :price
    # attr_writer :type, :color, :price

    def initialize(input_options)
      @type = input_options[:type]
      @color = input_options[:color]
      @price = input_options[:price]
    end

  end
end