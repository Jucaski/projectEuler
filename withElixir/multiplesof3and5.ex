defmodule Loop do
  def print_multiple_times(n, list) when n <= 1 do
     IO.puts "#{n}"
     IO.puts "La sumaa es: #{list}"
  end

  def print_multiple_times(n, list) do
  IO.puts "La sumaa es: #{list}"
       if rem(n,3) == 0 do
           IO.puts "Es multiplo de 3: #{n}"
           [1 | list]
       end
       if rem(n,5) == 0 do
           IO.puts "Es multiplo de 5: #{n}"
           [2 | list]
       end
       print_multiple_times(n - 1, list)
  end
end

Loop.print_multiple_times(10, [])
