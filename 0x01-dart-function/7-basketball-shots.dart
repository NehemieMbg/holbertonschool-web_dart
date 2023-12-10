int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = (teamA['Free throws'] ?? 0) +
      (2 * (teamA['2 pointers'] ?? 0)) +
      (3 * (teamA['3 pointers'] ?? 0));
  int teamBPoints = (teamB['Free throws'] ?? 0) +
      (2 * (teamB['2 pointers'] ?? 0)) +
      (3 * (teamB['3 pointers'] ?? 0));

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}

void main() {
  var teamA = {'Free throws': 23, '2 pointers': 32, '3 pointers': 16};
  var teamB = {'Free throws': 31, '2 pointers': 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}
