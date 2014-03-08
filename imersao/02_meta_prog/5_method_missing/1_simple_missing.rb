require "YAML"

class Garage
  
  def initialize
    @collection = YAML.load_file( File.join(File.dirname(__FILE__), "cars.yml") )
  end
  
private  
  def method_missing(method, *args, &block)
    if method =~ /find_by_(\w+)/
      @collection.find_all {|c| c[$1] == args.first  }
    end
  end
  
end

garage = Garage.new
fiat = garage.find_by_manufacturer("Fiat")
fiat.each { |car| p car["model"] }