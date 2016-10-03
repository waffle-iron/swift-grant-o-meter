//
// Copyright 2016 Oliver Guntli
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
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
