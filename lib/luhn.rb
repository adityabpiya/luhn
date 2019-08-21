module Luhn
    def self.is_valid?(number)
        #solution here
        arr = number.to_s.split("").map(&:to_i)
        puts arr.inspect



        arr2 = []
        arr.reverse.each_with_index { |num, index| 
            if index.odd?
                num = num * 2
                if num >= 10
                    num = num - 9
                end
            end
  
            arr2 << num
  
            puts "#{index} : #{num}"
            }           
            puts arr2.inspect

            sum = 0
            if  arr2.inject(:+) % 10 == 0
                return true
            else
                return false
            end
        

    end
end

            Luhn.is_valid?(4194560385008504)




# - ( for lunh, reverse the array first coz start from left
# then find index, 
# then if index  are odd, double the element,
#and if the doubled digit is = or more 
# then 10 (double-9)
#  then add all digits, 
# then the sum%10 = 0 = true if not false, 
# but we need to have an variable 
#which will give us the value and its index number
