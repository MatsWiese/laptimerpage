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
    var name = "Handsfree Laptimer"
//    var favicon = URL(static: "/images/appiconHandsfreeLaptimer.png")
//    var titleSuffix = "Apps & Projects"
    var url = URL(static: "https://laptimer.matswiese.app")
    var builtInIconsEnabled = true

    var author = "Mats Wiese"

    // The Laptimer app page is the root of this subdomain; the portfolio home
    // lives on the separate matswiese.app site.
    var homePage = Laptimer()
    var layout = AppLayout()

    @ElementBuilder<any StaticPage> var staticPages: [any StaticPage] {
        PrivacyPolicy()
        LegalNotice()
        Changelog()
    }
}
