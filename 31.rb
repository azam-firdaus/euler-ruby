sum = 0

0.upto(1) do |j|
  0.upto(2) do |k|
    0.upto(4) do |l|
      0.upto(10) do |m|
        0.upto(20) do |n|
          0.upto(40) do |o|
            0.upto(100) do |p|
              0.upto(200) do |q|
                total = ( 1 * q ) + ( 2 * p ) + ( 5 * o ) + ( 10 * n ) + ( 20 * m ) + ( 50 * l ) + ( 100 * k ) + ( 200 * j )
                if total == 200
                  puts "(1px#{q}) + (#{p}x2p) + (#{o}x5p) + (#{n}x10p) + (#{m}x20p) + (#{l}x50p) + (#{k}x1£) + (#{j}x2£)"
                  sum = sum + 1
                end
              end
            end
          end
        end
      end
    end
  end
end
puts sum