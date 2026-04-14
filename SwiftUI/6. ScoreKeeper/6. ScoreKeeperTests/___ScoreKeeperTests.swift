//___FILEHEADER___

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {
    
    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
                    Player(name: "영아", score: 0),
                    Player(name: "승모", score: 5),
                ])
        scoreboard.resetScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }
    @Test("Highest score wins")
        func highestScoreWins() {
            let scoreboard = Scoreboard(
                players: [
                    Player(name: "영아", score: 0),
                    Player(name: "승모", score: 4),
                ],
                 state: .gameOver,
                 doesHighestScoreWin: true
            )
            
            let winners = scoreboard.winners
            #expect(winners == [Player(name: "승모", score: 4)])
        }
        @Test("Lowest score wins")
        func lowestScoreWins() {
            let scoreboard = Scoreboard(
                players: [
                    Player(name: "영아", score: 0),
                    Player(name: "승모", score: 4),
                ],
                state: .gameOver,
                doesHighestScoreWin: false
            )
            let winners = scoreboard.winners
            #expect(winners == [Player(name: "영아", score: 0)])

        }
}
