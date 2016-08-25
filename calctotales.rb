class Calctotales
  def initialize(cant, price)
      @cant = cant
      @price = price
  end

  def showTotal
    puts "El total es: " + (@cant * @price).to_s
  end
end

program = Calctotales.new(2, 10)
program.showTotal()