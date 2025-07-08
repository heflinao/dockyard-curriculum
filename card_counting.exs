defmodule CardCounting do
	def find_card_count(new_card_number) do
		high_cards = [10, 11, 12, 13]
		normal_cards = [7, 8, 9]
		low_cards = [1, 2, 3, 4, 5, 6]

		high = 1
		low = -1
		normal = 0

		initial_count = 0

		cond do
			Enum.any?(high_cards, fn card_number -> card_number == new_card_number end) ->
				IO.puts "high: #{new_card_number}"
				initial_count + high
			Enum.any?(low_cards, fn card_number -> card_number == new_card_number end) ->
				IO.puts "low: #{new_card_number}"
				initial_count + low
			Enum.any?(normal_cards, fn card_number -> card_number == new_card_number end) ->
				IO.puts "normal: #{new_card_number}"
				initial_count + normal
			true -> 
				IO.puts "didn't match"
				initial_count
		end
	end
end