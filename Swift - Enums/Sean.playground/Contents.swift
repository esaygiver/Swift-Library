import Foundation

enum SocialPlatform: String, CaseIterable {
    case twitter   = "you can tweet"
    case youtube   = "you can learn by watching smth new"
    case instagram = "you can post"
    case linkedIn  = "you can looking for a job"
}
func x(s: SocialPlatform.RawValue) {
    print(s)
}

func shareImage(on platform: SocialPlatform) {
    switch platform {
    
    case .twitter:
        print("Tweet")
    case .youtube:
        print("Subscribe")
    case .instagram:
        print("Like")
    case .linkedIn:
        print("Job")
    }
}

var s = shareImage(on: .twitter)

func getSeanOpinion(on platform: SocialPlatform) {
    print(platform.rawValue)
}

getSeanOpinion(on: .instagram)

for platform in SocialPlatform.allCases {
    print(platform.rawValue)
}




