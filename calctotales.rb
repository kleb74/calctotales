class Calctotales
  def initialize(cant, price)
      @cant = cant.to_i
      @price = price.to_i
  end

  def showTotal
    puts "El total es: " + (@cant * @price).to_s
  end
end

program = Calctotales.new(ARGV[0], ARGV[1])
program.showTotal()