defmodule HabitTracker do
	@small 5
	@medium 20
	@large 30

	def calculate_total_points(number_of_small_tasks, number_of_medium_tasks, number_of_large_tasks) do
		number_of_small_tasks * @small + number_of_medium_tasks * @medium + number_of_large_tasks * @large
	end
end