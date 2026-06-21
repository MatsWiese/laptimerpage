import Foundation
import Ignite

struct Version {
    let versionNumber: String
  let badgeTitle: String
    let text: String
}
  
struct Changelog: StaticPage {
    var title = "What's New"
    var path = "/changelog"

  let versions: [Version] = [
    Version(versionNumber: "1.0", badgeTitle: "Initial Release", text: "Initial release of Handsfree Laptimer. Feel free to contact me for feature requests."),
  ]
  
    var body: some HTML {
        Section {
            Text("What's New")
                .font(.title1)
                .foregroundStyle("#00ffff")
                .margin(.top, 30)

            Divider()
                .margin(.vertical, 30)
          
          ForEach(versions) { version in
            Text("Version \(version.versionNumber)")
              .font(.title2)
              .foregroundStyle("#00ffff")
            
            if version.badgeTitle != "" {
              Badge(version.badgeTitle)
                .role(.info)
                .margin(.bottom, 20)
            }
            
            Text(version.text)
              .foregroundStyle(.light)
          }
//            Text("Version 1.0")
//                .font(.title2)
//                .foregroundStyle("#00ffff")

//            Badge("Initial Release")
//                .role(.info)
//                .margin(.bottom, 20)

//            Text("Initial release of Handsfree Laptimer. Feel free to contact me for feature requests.")
//                .foregroundStyle(.light)
        }
        .background("#000000")
        .padding(.top, 100)
        .padding(.bottom, 60)
        .padding(.horizontal, 40)
    }
}
