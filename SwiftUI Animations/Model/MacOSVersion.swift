//
//  MacOSVersion.swift
//  SwiftUI Animations
//
//  Created by Adriano Rezena on 13/04/23.
//

import Foundation

struct MacOSVersion: Identifiable {
    let id: UUID = UUID()
    let name: String
    let fullname: String
    let imageName: String
    let description: String
}

extension MacOSVersion {
    static let mock: MacOSVersion = MacOSVersion(
        name: "Ventura",
        fullname: "macOS Ventura",
        imageName: "Ventura",
        description: "macOS Ventura is the nineteenth and current major release of macOS, Apple's desktop operating system for Mac computers. The successor to macOS Monterey, it was announced at WWDC 2022 on June 6, 2022, and launched on October 24, 2022."
    )
    
    static func getAll() -> [MacOSVersion] {
        [
            MacOSVersion(
                name: "Ventura",
                fullname: "macOS Ventura",
                imageName: "Ventura",
                description: "macOS Ventura is the nineteenth and current major release of macOS, Apple's desktop operating system for Mac computers. The successor to macOS Monterey, it was announced at WWDC 2022 on June 6, 2022, and launched on October 24, 2022."
            ),
            MacOSVersion(
                name: "Monterey",
                fullname: "macOS Monterey",
                imageName: "Monterey",
                description: "macOS Monterey is the eighteenth major release of macOS, Apple's desktop operating system for Macintosh computers. The successor to macOS Big Sur, it was announced at WWDC 2021 on June 7, 2021, and released on October 25, 2021. macOS Monterey was succeeded by macOS Ventura, which was released on October 24, 2022."
            ),
            MacOSVersion(
                name: "Big Sur",
                fullname: "macOS Big Sur",
                imageName: "BigSur",
                description: "macOS Big Sur is the seventeenth major release of macOS, Apple Inc.'s operating system for Macintosh computers. It was announced at Apple's Worldwide Developers Conference on June 22, 2020, and was released to the public on November 12, 2020."
            ),
            MacOSVersion(
                name: "Catalina",
                fullname: "macOS Catalina",
                imageName: "Catalina",
                description: "macOS Catalina is the sixteenth major release of macOS, Apple Inc.'s desktop operating system for Macintosh computers. It is the successor to macOS Mojave and was announced at WWDC 2019 on June 3, 2019 and released to the public on October 7, 2019."
            ),
            MacOSVersion(
                name: "Mojave",
                fullname: "macOS Mojave",
                imageName: "Mojave",
                description: "macOS Mojave is the fifteenth major release of macOS, Apple Inc.'s desktop operating system for Macintosh computers. Mojave was announced at Apple's Worldwide Developers Conference on June 4, 2018, and was released to the public on September 24, 2018."
            ),
            MacOSVersion(
                name: "High Sierra",
                fullname: "macOS High Sierra",
                imageName: "HighSierra",
                description: "macOS High Sierra is the fourteenth major release of macOS, Apple Inc.'s desktop operating system for Macintosh computers. macOS High Sierra was announced at the WWDC 2017 on June 5, 2017 and was released on September 25, 2017. The name \"High Sierra\" refers to the High Sierra region in California."
            ),
            MacOSVersion(
                name: "Sierra",
                fullname: "macOS Sierra (10.12)",
                imageName: "Sierra",
                description: "macOS Sierra is the thirteenth major release of macOS, Apple Inc.'s desktop and server operating system for Macintosh computers. The name \"macOS\" stems from the intention to uniform the operating system's name with that of iOS, watchOS and tvOS. Wikipedia"
            ),
            MacOSVersion(
                name: "El Capitan",
                fullname: "OS X El Capitan",
                imageName: "ElCapitan",
                description: "OS X El Capitan is the twelfth major release of macOS, Apple Inc.'s desktop and server operating system for Macintosh. It focuses mainly on performance, stability, and security."
            ),
            MacOSVersion(
                name: "Yosemite",
                fullname: "OS X Yosemite",
                imageName: "Yosemite",
                description: "OS X Yosemite is the eleventh major release of macOS, Apple Inc.'s desktop and server operating system for Macintosh computers. OS X Yosemite was announced and released to developers on June 2, 2014, at WWDC 2014 and released to public beta testers on July 24, 2014."
            ),
            MacOSVersion(
                name: "Mavericks",
                fullname: "OS X Mavericks",
                imageName: "Mavericks",
                description: "OS X Mavericks is the 10th major release of macOS, Apple Inc.'s desktop and server operating system for Macintosh computers. OS X Mavericks was announced on June 10, 2013, at WWDC 2013, and was released on October 22, 2013, worldwide."
            )
        ]
    }
}
