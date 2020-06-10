//
//  constants.swift
//  YouTube-OneDayBuild
//
//  Created by Admin on 10/06/20.
//  Copyright © 2020 Ashok@apponward. All rights reserved.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyCXnwhxLsNyGmkBsxpi-DQ6WtOH0BE-YfY"
    static var PLAYLIST_ID = "UUj22tfcQrWG7EMEKS0qLeEg"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
