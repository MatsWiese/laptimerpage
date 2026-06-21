import Foundation
import Ignite

struct Feature {
    let title: String
    let description: String
    let icon: String
}

struct HandsfreeLaptimer: StaticPage {
    var title = "Handsfree Laptimer"

    let features: [Feature] = [
        Feature(title: "Race your Drone",       description: "Fly the track you like!",                                                             icon: "arrow-repeat"),
        Feature(title: "Controlled by voice",   description: "When you can't use your hands, use your voice!",                                       icon: "mic-fill"),
        Feature(title: "Easy and quick setup",  description: "No need for a complicated setup. Just start the app and start racing.",                 icon: "lightning-fill"),
        Feature(title: "Get acoustic feedback", description: "When your eyes are covered by your goggles, you get confirmation.",                     icon: "ear-fill"),
        Feature(title: "Customizable",          description: "You can change the sounds and even the words to command the app.",                      icon: "gear-wide-connected"),
        Feature(title: "Track history",         description: "See all laps of the challenge as an overview.",                                         icon: "clipboard-data-fill"),
    ]

    var body: some HTML {
        // Hero: background image with dark overlay, iPhone mockup + app info
        Section {
            Grid(spacing: .medium) {
                VStack(alignment: .center) {
                    ZStack {
                        Image(decorative: "/images/iphoneFrame white.png")
                            .resizable()
                            .frame(height: 520)
                        Image(decorative: "/images/screenshotHandsfreeLaptimer.png")
                            .resizable()
                            .frame(height: 480)
                            .style(.borderRadius, "18px")
                            .padding(.top, 10)
                    }
                }
                .width(5)
                .padding(.top, 20)

                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .center, spacing: 20) {
                        Image(decorative: "/images/appiconHandsfreeLaptimer.png")
                            .frame(width: 80, height: 80)
                            .style(.borderRadius, "18px")
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Handsfree Laptimer - FPV + RC")
                                .font(.title3)
                                .foregroundStyle("#00ffff")
                            Text("Free")
                                .foregroundStyle(.light)
                        }
                    }
                    Text("Track your laptimes by voice commands.")
                        .font(.lead)
                        .fontWeight(.bold)
                        .foregroundStyle(.light)
                        .margin(.top, 30)
                    Link(target: "https://apps.apple.com/de/app/id6751469529") {
                        Image(decorative: "/images/appstore.png")
                            .frame(height: 60)
                    }
                    .margin(.top, 30)
                    HStack(alignment: .center, spacing: 12) {
                        Link(target: "https://testflight.apple.com/join/2s8kNggV") {
                            Image(decorative: "/images/testflighticon.png")
                                .frame(width: 40, height: 40)
                                .style(.borderRadius, "9px")
                        }
                        .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                        Link("Try the RaceTrack-Designer in TestFlight", target: "https://testflight.apple.com/join/2s8kNggV")
                            .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                            .foregroundStyle(.light)
                            .fontWeight(.bold)
                    }
                    .margin(.top, 16)
                }
                .width(7)
                .padding(.top, 60)
            }
        }
        .style(.backgroundImage, "linear-gradient(rgba(54,59,61,0.8),rgba(54,59,61,0.8)),url('/images/headerimage.jpg')")
        .style(.backgroundSize, "cover")
        .style(.backgroundPosition, "top")
        .style(.borderRadius, "0 0 40px 40px")
        .padding(.top, 80)
        .padding(.bottom, 60)

        // Features grid
        Section {
            Grid(spacing: .large) {
              ForEach(features) { feature in
//                Card {
                  HStack(alignment: .top, spacing: 16) {
                    Image(systemName: feature.icon, description: feature.title)
                      .font(.title3)
                      .foregroundStyle("#00ffff")
                    VStack(alignment: .leading, spacing: 4) {
                      Text(feature.title)
                        .font(.title5)
                        .foregroundStyle("#00ffff")
                      Text(feature.description)
                        .foregroundStyle(.light)
                    }
                  }
                  .width(4)
//                }
//                .role(.info)
//                .cardStyle(.bordered)
              }
            }
            .columns(3)
        }
        .background("#000000")
        .padding(.vertical, 60)
        .padding(.horizontal, 40)
    }
}

