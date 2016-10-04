//
// Copyright 2016 Oliver Guntli
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//

import Vapor


// Initialize the droplet for the use in vapor
let drop = Droplet()

// The version of the API for the JSON calls
// We are using version 2.
let apiVersion: String = "v2"


// The route for get request to the landing page
drop.get { req in
    let lang = req.headers["Accept-Language"]?.string ?? "en"
    return try drop.view.make("grumpy-welcome", [
        "message": Node.string(drop.localization[lang, "welcome", "title"])
    ])
}


// This is goint to be the page of each user. The page route is www.url/u/[username]
// If only www.url/u/ is provided the route redirects to a search page
drop.group("u") { userPage in
    userPage.get { req in
        let lang = req.headers["Accept-Language"]?.string ?? "en"
        return try drop.view.make("error", [
            "error": "No user page selected",
            "explanation": "you just failed"])
    }
    
    userPage.get(String.self) { req, userName in
        let lang = req.headers["Accept-Language"]?.string ?? "en"
        return try drop.view.make("userhome", [
            "message": Node.string(drop.localization[lang, "", ""])
        ])
    }
}


drop.run()
