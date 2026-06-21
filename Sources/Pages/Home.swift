//
//  Feature.swift
//  IgniteStarter
//
//  Created by Fred Erik on 21.06.26.
//


import Foundation
import Ignite

struct App {
    let title: String
    let imageString: String
    let iPhoneFrame: String
    let pageURL: String
}

struct Home: StaticPage {
    var title = "my Apps"

    let apps: [App] = [
      App(title: "Handsfree Laptimer", imageString: "/images/screenshotHandsfreeLaptimer.png", iPhoneFrame: "/images/iphoneFrame white.png", pageURL: "/laptimer"),
    ]

    var body: some HTML {
        // Hero: background image with dark overlay, iPhone mockup + app info
        Section {
            // Profile Image in a Circle
            Image("/images/Profile/IMG_7893.jpeg", description: "Profile photo")
                .frame(width: 350, height: 350)
                .class("rounded-circle", "object-fit-cover", "d-block", "mx-auto", "shadow")
                .margin(.top, 30)
        }
        .style(.backgroundImage, "linear-gradient(rgba(54,59,61,0.8),rgba(54,59,61,0.8)),url('/images/headerimage.jpg')")
        .style(.backgroundSize, "cover")
        .style(.backgroundPosition, "top")
        .style(.borderRadius, "0 0 40px 40px")
        .padding(.top, 80)
        .padding(.bottom, 60)

      Section {
//        AboutMe-Text
      }
        // Apps grid
        Section {
//            Grid(spacing: .large) {
//              ForEach(apps) { app in
          let app = apps[0]
          VStack(alignment: .center) {
            LinkGroup(target: app.pageURL) {
              VStack(alignment: .center) {
                ZStack {
                  Image(decorative: "\(app.iPhoneFrame)")
                    .resizable()
                    .frame(height: 520)
                  Image(decorative: "\(app.imageString)")
                    .resizable()
                    .frame(height: 480)
                    .style(.borderRadius, "18px")
                    .padding(.top, 10)
                }
                Text(app.title)
                  .font(.title3)
                  .fontWeight(.thin)
                  .margin(.top, 20)
              }
            }
          }
//              }
//            }
//            .columns(3)
        }
        .background("#000000")
        .padding(.vertical, 60)
        .padding(.horizontal, 40)
    }
}
