import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = MatsWiese()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct MatsWiese: Site {
    var name = "MatsWiese.app"
//    var favicon = URL(static: "/images/appiconHandsfreeLaptimer.png")
//    var titleSuffix = "Apps & Projects"
    var url = URL(static: "https://www.matswiese.app")
    var builtInIconsEnabled = true

    var author = "Mats Wiese"

    var homePage = Home()
    var layout = MainLayout()

    @ElementBuilder<any StaticPage> var staticPages: [any StaticPage] {
        Laptimer()
        PrivacyPolicy()
        LegalNotice()
        Changelog()
    }
}
