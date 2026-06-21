import Foundation
import Ignite

struct Changelog: StaticPage {
    var title = "What's New"
    var path = "/changelog"

    var body: some HTML {
        Section {
            Text("What's New")
                .font(.title1)
                .foregroundStyle("#00ffff")
                .margin(.top, 30)

            Divider()
                .margin(.vertical, 30)

            Text("Version 1.0")
                .font(.title2)
                .foregroundStyle("#00ffff")

            Badge("Initial Release")
                .role(.info)
                .margin(.bottom, 20)

            Text("Initial release of Handsfree Laptimer. Feel free to contact me for feature requests.")
                .foregroundStyle(.light)
        }
        .background("#000000")
        .padding(.top, 100)
        .padding(.bottom, 60)
        .padding(.horizontal, 40)
    }
}
