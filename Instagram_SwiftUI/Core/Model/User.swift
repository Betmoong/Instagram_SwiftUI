//
//  User.swift
//  Instagram_SwiftUI
//
//  Created by Rocky on 2023/09/18.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: "VenomPoster", fullname: "Tom Hardy", bio: "Spider man is mine", email: "venom@gamil.com"),
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman", fullname: "Bruce Wayne", bio: "Batman", email: "batman@gamil.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "ironman", fullname: "Tony Stark", bio: "Playboy & Billionaire", email: "ironman@gamil.com"),
        .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "blackpanther", fullname: nil, bio: "blackPanther is cool", email: "blackpanther@gamil.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman", fullname: "Peter Parker", bio: "Test bio", email: "spiderman@gamil.com")   
    ]
}
