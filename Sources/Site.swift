import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = LaptimerPage()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct LaptimerPage: Site {    
    var name = "Handsfree Laptimer"
    var favicon = URL(static: "/images/appiconHandsfreeLaptimer.png")
//    var titleSuffix = "Apps & Projects"
    var url = URL(static: "https://www.matswiese.app")
    var builtInIconsEnabled = true

    var author = "Mats Wiese"

    var homePage = HandsfreeLaptimer()
    var layout = MainLayout()

    @ElementBuilder<any StaticPage> var staticPages: [any StaticPage] {
        PrivacyPolicy()
        LegalNotice()
        Changelog()
    }
}
