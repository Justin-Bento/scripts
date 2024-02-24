# User: Justin Bento
# Start Date to End Date: 2024-02-23 to yyyy-mm-dd
# Pseudo Code:
# ------------------------------------------------------------
# 1. Start Tournament:
#   - Randomly assign players to the red and blue teams.
#   - Each team will consist of 6 players.
#
#2. Setup:
#   - Divide participants into red and blue teams.
#   - Each team will have 6 players.

# 3. Tournament Rounds:
#   - Each round will last for 5 seconds.
#   - Matchmaking:
#   - For each round, randomly match one player from the red team against one player from the blue team.
#   - Player Elimination:
#   - The loser of each round will be randomly knocked out.
#   - Eliminated players are placed in the spectator pool.

# 4. Final Round:
#   - Once all participants have been eliminated, proceed to the final round.
#   - Conduct a 1v1 rock-paper-scissors match to determine the ultimate winner.
#   - The victor of the final round will be declared the overall winner of the tournament.
# 5. Rock-Paper-Scissors Match:
#   - Each remaining player will participate in a single elimination rock-paper-scissors tournament.
#   - Winners of each match advance to the next round until a final winner emerges.

players = ['Alice', 'Bob', 'David', 'Emma', 'Frank', 'Grce', 'Henery', 'Ivy', 'Jack', 'Kate', 'Liam', 'Mia' ]

# Shuffle the array and select the first 12 names
shuffle_players = players.shuffle.take(12)

# Print the randomly generated names
shuffle_players.each_with_index do |shuffle_player, index|
  puts "#{index +1}. #{shuffle_player}"
end
