module AluguelsHelper
  def date_format_br(date)
    date.strftime "%d/%m/%Y"
  end

  def currency_format_brl(number)
    number_to_currency(number, :unit => "R$ ", :separator => ",", :delimiter => ".")
  end
end
