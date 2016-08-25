class Calctotales
  def initialize(cant, price, state)
      @cant = cant.to_i
      @price = price.to_i
      @state = state

      @state_taxes = {"UT" => 6.85, "NV" => 8.0, "TX" => 6.0, "AL" => 4.0, "CA" => 8.25 }
  end

  def calcSubtotal
    @cant * @price
  end

  def calcSubtotalWithTaxes(subtotal)
    subtotal * (@state_taxes[@state]/100 + 1)
  end

  def showTotal
    subtotal = calcSubtotal
    subtotalWithTaxes = calcSubtotalWithTaxes(subtotal)

    puts "El total sin impuesto es: " + subtotal.to_s
    puts "El total con impuesto es: " + subtotalWithTaxes.to_s
  end
end

program = Calctotales.new(ARGV[0], ARGV[1], ARGV[2])
program.showTotal()