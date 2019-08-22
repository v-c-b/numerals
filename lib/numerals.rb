# conf contains the 3 numerals needed for each digit
$conf = [
["I","V","X"],
["X","L","C"],
["C","D","M"],
["M","-","-"]
]

class Num # Creating the class triggers creating the array for lookup
  def initialize # builds the array of hashes for lookup
    $arr =[{},{},{},{}]
    for i in 0..($arr.length - 1) # iterates through the digits
      4.times { |index| $arr[i].store(index, $conf[i][0] * index) }
      $arr[i].store(4, $conf[i][0] + $conf[i][1])
      4.times { |index| $arr[i].store(5+index, $conf[i][1] + $conf[i][0] * index) }
      $arr[i].store(9, $conf[i][0] + $conf[i][2])
    end
  end

  def conv(number) # returns Roman Numerals string corresponding to the integer
    result = ""
    digit(number).each.with_index do |n, i|
      result = $arr[i][n] + result
    end
    result
  end

  def digit(number) # returns array of digits of an integer, starting with units, then ten digits etc.
    number.to_s.chars.map(&:to_i).reverse
  end

  def reverse_conv(string) # returns the integer corresponding to the roman numberals input
    for i in 0..3999
      return i if string == conv(i)
    end
  end

end



# NOT NEEDED !!!!! array of numbers with corresponding numerals - by digits
$array =
[
 {
0 => "",
1 => "I",
2 => "II",
3 => "III",
4 => "IV",
5 => "V",
6 => "VI",
7 => "VII",
8 => "VIII",
9 => "IX",
10 => "X"
},
{
0 => "",
1 => "X",
2 => "XX",
3 => "XXX",
4 => "XL",
5 => "L",
6 => "LX",
7 => "LXX",
8 => "LXXX",
9 => "XC"
},
{
0 => "",
1 => "C",
2 => "CC",
3 => "CCC",
4 => "CD",
5 => "D",
6 => "DC",
7 => "DCC",
8 => "DCCC",
9 => "CM"
},
{
0 => "",
1 => "M",
2 => "MM",
3 => "MMM",
4 => "-",
5 => "-",
6 => "-",
7 => "-",
8 => "-",
9 => "-"
}
]
