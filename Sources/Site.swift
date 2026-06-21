import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Handsfree Laptimer"
    var favicon = URL(static: "/images/appiconHandsfreeLaptimer.png")
//    var titleSuffix = "Apps & Projects"
    var url = URL(static: "https://www.matswiese.app")
    var builtInIconsEnabled = true

    var author = "Mats Wiese"

    var homePage = Home()
    var layout = MainLayout()

    @ElementBuilder<any StaticPage> var staticPages: [any StaticPage] {
        PrivacyPolicy()
        LegalNotice()
        Changelog()
    }
}
