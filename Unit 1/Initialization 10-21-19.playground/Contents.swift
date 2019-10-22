import UIKit

class Playlist {
  // properties
    // below properties are not initialized
  var name: String
  var trackCount: Int
  var description: String
  var isTop100: Bool
  
  // desginated initializer, initializes all the properties of the class
  init(name: String,
       trackCount: Int,
       description: String,
       isTop100: Bool){
    self.name = name
    self.trackCount = trackCount
    self.description = description
    self.isTop100 = isTop100
  }
    
  // convenience initializer and failable initializer
    convenience init?(dict: [String: Any]) {
        // using guard let to unwrap value from key in dictionary
        // also we are using optional downcasting as? to cast to expected type
        guard let name = dict["name"] as? String,
        let trackCount = dict["trackCount"] as? Int,
        let description = dict["description"] as? String,
            let isTop100 = dict["isTop100"] as? Bool else {
                // return exits the initializer, does not continue through function
                return nil
        }
        // if all values are availale in the gurad statement **then we call our designated initializer**
        self.init(name: name,
                  trackCount: trackCount,
                  description: description,
                  isTop100: isTop100)
    }
  
    convenience init() {
        let names = ["Pursuit Coding list",
                     "Zumba rocks",
                     "Study playlist",
                     "90's",
                     "Morning run",
                     
        ]
        self.init(name: names.randomElement() ?? "Z100",
                  trackCount: 200,
                  description: "Aweome coding music",
                  isTop100: false )
    }
    
    convenience init?(name: String){ // "th".count = 2
        if name.count < 3 {
            return nil
        }
        self.init(name: name,
                  trackCount: 34,
                  description: "Currently trending",
                  isTop100: true
                  )
    }
    
  // instance method
  func info() {
    print("\(name) contains \(trackCount) tracks. \(description)")
    if isTop100 {
      print("\(name) is on the top 100 Spotify list")
    }
  }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019",
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true
]

// create a playlist using the playlistDict above and print the track count
// output: 128

// if let - is using an optional binding to unwrap the playlist(originally: let playlist -> if let playlist)
if let playlist = Playlist(dict: playlistDict) {
    print("The total track count is \(playlist.trackCount)")
}

let otherPlaylist = Playlist(dict: playlistDict)
print("track count is \(otherPlaylist?.trackCount)")

otherPlaylist?.info()

let randomPlaylist = Playlist()
print(randomPlaylist.name)

let randomPlaylist2 = Playlist()
print(randomPlaylist2.name)

if let playlistWithName = Playlist(name: "Reggaeton 100") {
    print("Playlist with the name \(playlistWithName.name) was created")
} else {
    print("Playlist not created")
}

class Store {
    var customers: [String] = []
    var cashOnHand: Double = 0
    func printDescription() {
        print("This is a store")
    }
}

class Bookstore: Store {
    var numberOfBooks = 0
    func printDescription() {
        print("This is a bookstore with \(numberOfBooks) books")
    }
}

let myStore = Bookstore()
myStore.numberOfBooks = 10000
myStore.printDescription()
