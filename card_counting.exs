defmodule CardCounting do
	def find_card_count([card_number | tail], initial_count) do
		find_card_count(tail, determine_increment(card_number) + initial_count)
	end

	def find_card_count([], initial_count), do: initial_count

	def find_card_count(card_number, initial_count) when is_integer(card_number) do
		determine_increment(card_number) + initial_count
	end

	def determine_increment(card_number) when card_number in [10, 11, 12, 13] do
		IO.puts "high: #{card_number}"
		1
	end

	def determine_increment(card_number) when card_number in [1, 2, 3, 4, 5, 6] do
		IO.puts "low: #{card_number}"
		-1
	end

	def determine_increment(card_number) do
		IO.puts "normal / didn't match: #{card_number}"
		0
	end
end