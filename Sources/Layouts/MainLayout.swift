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
                Link("Privacy Policy", target: "/privacypolicy")
                Link("Legal Notice", target: "/legalnotice")
                Link("What's New", target: "/changelog")
            } logo: {
                Image(decorative: "/images/appiconHandsfreeLaptimer.png")
                    .frame(width: 36, height: 36)
                    .style(.borderRadius, "9px")
                    .style(.marginRight, "8px")
                " Handsfree Laptimer"
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
                
                HStack(alignment: .center, spacing: 30) {
                  Link("Privacy Policy", target: "/privacypolicy")
                  //                        .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                    .foregroundStyle("#666666")
                  Link("Legal Notice", target: "/legalnotice")
                  //                        .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                    .foregroundStyle("#666666")
                  Link("What's New", target: "/changelog")
                  //                        .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                    .foregroundStyle("#666666")
                }
                .margin(.vertical, 20)
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
