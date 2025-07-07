defmodule CardCounting do
	def find_card_count(new_card_number) do
		high = [10, 11, 12, 13]
		normal = [7, 8, 9]
		low = [1, 2, 3, 4, 5, 6]

		_initial_count = 0

		cond do
			Enum.any?(high, fn card_number -> card_number == new_card_number end) -> 
				IO.puts "high: #{new_card_number}"
			Enum.any?(normal, fn card_number -> card_number == new_card_number end) -> 
				IO.puts "normal: #{new_card_number}"
			Enum.any?(low, fn card_number -> card_number == new_card_number end) -> 
				IO.puts "low: #{new_card_number}"
			true -> IO.puts "didn't match"
		end
	end
end