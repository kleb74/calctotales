require './calctotales'

describe 'calcTotales' do
  it 'should calculate the subtotal as 10 when the qty is 1 and the price 10' do
    calTotal=Calctotales.new(1,10,"CA")
    expect(calTotal.calcSubtotal()).to be 10
  end

    it 'should calculate the subtotal with taxes as 10.825 when the qty is 1 and the price 10' do
    calTotal=Calctotales.new(1,10,"CA")
    expect(calTotal.calcSubtotalWithTaxes(calTotal.calcSubtotal())).to be 10.825
  end
end