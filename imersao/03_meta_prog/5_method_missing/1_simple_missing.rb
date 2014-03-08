require "YAML"

class Garage
  
  def initialize 
    @collection = YAML.load_file(File.join(File.dirname(__FILE__), "cars.yml"))
  end

private
  
  def method_missing(method, *args, &block)
    if method =~ /find_by_(\w+)/
      @collection.find_all {|c| c[$1] == args.first }
    else
      super
    end
  end
  
end

garage = Garage.new
cars = garage.find_by_model("Fiat", "mais um parametro")
cars.each { |car| p car["model"] }
