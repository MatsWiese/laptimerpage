import Foundation
import Ignite

struct DarkPageBackground: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions) -> StyledHTML {
        content.style(.backgroundColor, "#000000")
    }
}

struct MainLayout: Layout {
    var body: some Document {
        Head {
            MetaStyle("body", style: DarkPageBackground())
        }
        Body {
            NavigationBar {
                // Portfolio home: no app-specific links in the brand bar.
            } logo: {
                // TODO: Placeholder brand icon. Swap to your chosen icon:
                //  - another built-in icon: change the systemName below
                //    (browse names at https://icons.getbootstrap.com), or
                //  - a custom image: replace this line with
                //    Image(decorative: "/images/yourLogo.png")
                //        .frame(width: 36, height: 36).style(.borderRadius, "9px")
                Image(systemName: "person-circle", description: "MatsWiese.app")
                    .style(.fontSize, "28px")
                    .style(.marginRight, "8px")
                " MatsWiese.app"
            }
            .navigationBarStyle(.dark)
            .background("rgba(0,0,0,0.3)")
            .style(.backdropFilter, "blur(2px)")
            .position(.fixedTop)

            content

            Section {
//                Divider()
              VStack(alignment: .center) {
                HStack(alignment: .center, spacing: 20) {
                  Text("Made by Mats Wiese")
                    .foregroundStyle("#666666")
                  Link(target: "https://github.com/matswiese") {
                    Image(systemName: "github", description: "GitHub")
                  }
                  //                    .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                  .foregroundStyle("#666666")
                  Link(target: "https://youtube.com/@stammix") {
                    Image(systemName: "youtube", description: "YouTube")
                  }
                  //                    .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                  .foregroundStyle("#666666")
                  Link(target: "mailto:handsfreelaptimer@gmail.com") {
                    Image(systemName: "envelope-fill", description: "Email")
                  }
                  //                    .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                  .foregroundStyle("#666666")
                }
                .margin(.top, 30)
                .margin(.bottom, 20)
              }
            }
            .background("#000000")
//            .padding(.vertical, 40)
//            .padding(.horizontal, 40)
            .padding(40)
        }
        .ignorePageGutters()
    }
}
