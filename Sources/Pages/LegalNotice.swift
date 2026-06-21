import Foundation
import Ignite

struct LegalNotice: StaticPage {
    var title = "Legal Notice"
    var path = "/legalnotice"
    var layout = AppLayout()

    var body: some HTML {
        Section {
            Text("Legal Notice")
                .font(.title1)
                .foregroundStyle("#00ffff")
                .margin(.top, 30)

            Emphasis("Because this is only required in Germany, the following legal notice is only provided in German.")
                .foregroundStyle("#666666")

            Text("Angaben gem §5 TMG")
                .font(.title3)
                .foregroundStyle("#00ffff")
                .margin(.top, 40)

            Text("Frederik Wiesmann")
                .foregroundStyle(.light)
            Text("Kirchweg 1")
                .foregroundStyle(.light)
            Text("79713 Bad Säckingen")
                .foregroundStyle(.light)
            Text("matswiese(at)gmail.com")
                .foregroundStyle(.light)
                .margin(.top, 10)

            Text("Haftung für Links")
                .font(.title3)
                .foregroundStyle("#00ffff")
                .margin(.top, 40)

            Text("Diese App enthält Links zu externen Websites Dritter, auf deren Inhalte ich keinen Einfluss habe. Deshalb kann ich für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werde ich derartige Links umgehend entfernen.")
                .foregroundStyle(.light)

            Emphasis("Last updated: November 18, 2025")
                .foregroundStyle("#666666")
                .margin(.top, 40)
        }
        .background("#000000")
        .padding(.top, 100)
        .padding(.bottom, 60)
        .padding(.horizontal, 40)
    }
}
