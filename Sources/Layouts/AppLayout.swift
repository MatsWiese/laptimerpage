import Foundation
import Ignite

/// Layout for an app section (the Laptimer page and its sub-pages: Privacy
/// Policy, Legal Notice, What's New). It shows the app-specific navigation and
/// footer links. The left-side brand button leads to `logoTarget`, which the
/// page sets: the app's main page uses "/" (back to the portfolio home), while
/// its sub-pages use "/laptimer" (back up to the app page).
struct AppLayout: Layout {
    /// Destination for the navigation bar's brand/logo button.
    var logoTarget: String = "/laptimer"
    /// Text shown next to the brand/logo. Sub-pages name the app they belong to;
    /// the app's main page (which links back home) overrides this.
    var logoText: String = "Handsfree Laptimer"

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
                Link(target: logoTarget) {
                    Image(decorative: "/images/appiconHandsfreeLaptimer.png")
                        .frame(width: 36, height: 36)
                        .style(.borderRadius, "9px")
                        .style(.marginRight, "8px")
                    " \(logoText)"
                }
            }
            .navigationBarStyle(.dark)
            .background("rgba(0,0,0,0.3)")
            .style(.backdropFilter, "blur(2px)")
            .position(.fixedTop)

            content

            Section {
              VStack(alignment: .center) {
                HStack(alignment: .center, spacing: 20) {
                  Text("Made by Mats Wiese")
                    .foregroundStyle("#666666")
                  Link(target: "https://github.com/matswiese") {
                    Image(systemName: "github", description: "GitHub")
                  }
                  .foregroundStyle("#666666")
                  Link(target: "https://youtube.com/@stammix") {
                    Image(systemName: "youtube", description: "YouTube")
                  }
                  .foregroundStyle("#666666")
                  Link(target: "mailto:handsfreelaptimer@gmail.com") {
                    Image(systemName: "envelope-fill", description: "Email")
                  }
                  .foregroundStyle("#666666")
                }
                .margin(.top, 30)

                HStack(alignment: .center, spacing: 30) {
                  Link("Privacy Policy", target: "/privacypolicy")
                    .foregroundStyle("#666666")
                  Link("Legal Notice", target: "/legalnotice")
                    .foregroundStyle("#666666")
                  Link("What's New", target: "/changelog")
                    .foregroundStyle("#666666")
                }
                .margin(.vertical, 20)
              }
            }
            .background("#000000")
            .padding(40)
        }
        .ignorePageGutters()
    }
}
