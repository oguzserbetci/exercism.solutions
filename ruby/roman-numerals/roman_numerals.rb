class Integer

	VERSION = 1.0

	ROMAN_SYMBOLS = {
    1000 => 'M',
     900 => 'CM',
     500 => 'D',
     400 => 'CD',
     100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
       9 => 'IX',
       5 => 'V',
       4 => 'IV',
       1 => 'I'
  }

  private_constant :ROMAN_SYMBOLS

  def to_roman
    x = self

    ROMAN_SYMBOLS.map do |value, symbol|
      amount, x = x.divmod(value)
      symbol * amount
    end.join

  end

end
