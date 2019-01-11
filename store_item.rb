# Open the store_item.rb file you created from the previous lesson.
# • create a sub class of your store item (a more specific type of store item)
# • Create a new module in your store item to mix in behavoirs
# • Create separate files for each of your classes and modules.
# • Create a separate runner.rb file to demonstrate how each class and module work.

# guns = {type: "revolver", make: "Colt", color: "blue", price: 700}
# socks = {:type => "ankle", :make => "Nike", :color => "black", price: 7}
# shoes = {type: "hi-top", make: "Jordan", color: "white", price: 7}

module StoreFront
   module Swap
     def generic
      puts "Ok to substitute"
     end
   end

  class Store_Item
    include Swap
    attr_reader :type, :color, :price
    # attr_writer :type, :color, :price

    def initialize(input_options)
      @type = input_options[:type]
      @color = input_options[:color]
      @price = input_options[:price]
    end

  end

  class Milwaukee < Store_Item
    include Swap
    def initialize(input_options)
      super(input_options)

    end 
  end
end

store_item_1 = StoreFront::Store_Item.new(
                                          type: "Milk", 
                                          color: "white", 
                                           price: 4
                                          )


milwaukee_1 = StoreFront::Milwaukee.new(
                                        type: "Impact Drill",
                                        color: "Red",
                                        price: 325
                                        )
  
p store_item_1.color
p milwaukee_1.generic