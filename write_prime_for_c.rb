# contain the first 50,847,534 prime number, hard coded to array c++




require 'prime'


n = 50000000

array_of_prime = Prime.take(n)
puts array_of_prime.length


string_array = array_of_prime.join(", ")





##***************For JAVA(arraylist)***************##
# f = File.open('list_of_prime_arraylist.java', 'w')

# old_out = $stdout
# $stdout = f

# puts "import java.util.ArrayList;
# public class list_of_prime_arraylist{
#   public static void main(String[] args) {
#     ArrayList<Integer> prime_number = new ArrayList<Integer>();"

# array_of_prime.each do |e|
#     puts "    prime_number.add(#{e});"
# end 

# puts "
#   }
# }"


##***************For C++***************##
# f = File.open('list_of_prime.cpp', 'w')

# old_out = $stdout
# $stdout = f

# puts "include <cstdlib>
# using namespace std;
# int main (void) {

#   int LIST[] = {"
# puts string_array

# puts "      };
  
#   system(\"pause\");
#   return (0);
# }"





# ##***************For JAVA(array)***************##
# f = File.open('list_of_prime_array.java', 'w')

# old_out = $stdout
# $stdout = f

# puts "public class list_of_prime_array{
#   public static void main(String[] args) {
#     int[] arrayPrime = {"
# puts array_of_prime
# puts " };"

# puts "\n   }
# \n}"






##***************For C++(hard)***************##
# f = File.open('list_of_prime_2.cpp', 'w')

# old_out = $stdout
# $stdout = f

# puts "include <cstdlib>
# using namespace std;
# int main (void) {

#   int LIST[#{n}];
#   "
#   index_array = 0

#   array_of_prime.each do |e|
#     puts "  LIST[#{index_array}] = #{e};"
#     index_array = index_array + 1
#   end
  
# puts "system(\"pause\");
#   return (0);
# }
# "




##***************For JAVA(hard)***************##
# f = File.open('list_of_prime_array_2.java', 'w')

# old_out = $stdout
# $stdout = f

# puts "public class list_of_prime_array{
#   public static void main(String[] args) {
#     int[] arrayPrime = new int[#{n}];"
  
#   index_array = 0    
#   array_of_prime.each do |e|
#     puts "  arrayPrime[#{index_array}] = #{e};"
#     index_array = index_array + 1
#   end

# puts"    }
# }"








f.close

$stdout = old_out
