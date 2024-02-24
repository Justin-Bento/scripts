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

players = ['Alice', 'Bob', 'David', 'Emma', 'Frank', 'Grace', 'Henry', 'Ivy', 'Jack', 'Kate', 'Liam', 'Mia']

# Shuffle the array of players
shuffled_players = players.shuffle

# Define the number of groups and subgroups
num_groups = 4
players_per_group = (shuffled_players.length / num_groups.to_f).ceil

# Divide the shuffled players into groups and subgroups
shuffled_players.each_slice(players_per_group).with_index do |group, group_index|
  group.each_slice((group.length / 2.0).ceil).with_index do |subgroup, subgroup_index|
    puts "Team #{subgroup_index + 1}: #{subgroup.join(', ')}"
  end
end
