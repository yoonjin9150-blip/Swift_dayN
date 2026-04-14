//___FILEHEADER___

import SwiftUI
import SwiftData

@main
struct FriendsFavoriteMoviesApp : App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Movie.self, Friend.self])
    }
}
