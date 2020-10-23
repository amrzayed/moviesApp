//
//  MoviesModel.swift
//  MoviesApp
//
//  Created by A on 20/10/2020.
//  Copyright © 2020 amr zayed. All rights reserved.
//

import Foundation

struct MoviesModel : Codable {
    let page : Int?
    let total_results : Int?
    let total_pages : Int?
    let results : [MoviesResults]?

    enum CodingKeys: String, CodingKey {

        case page = "page"
        case total_results = "total_results"
        case total_pages = "total_pages"
        case results = "results"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        page = try values.decodeIfPresent(Int.self, forKey: .page)
        total_results = try values.decodeIfPresent(Int.self, forKey: .total_results)
        total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages)
        results = try values.decodeIfPresent([MoviesResults].self, forKey: .results)
    }

}



struct MoviesResults : Codable {
    let popularity : Double?
    let vote_count : Int?
    let video : Bool?
    let poster_path : String?
    let id : Int?
    let adult : Bool?
    let backdrop_path : String?
    let original_language : String?
    let original_title : String?
    let genre_ids : [Int]?
    let title : String?
    let vote_average : Double?
    let overview : String?
    let release_date : String?

    enum CodingKeys: String, CodingKey {

        case popularity = "popularity"
        case vote_count = "vote_count"
        case video = "video"
        case poster_path = "poster_path"
        case id = "id"
        case adult = "adult"
        case backdrop_path = "backdrop_path"
        case original_language = "original_language"
        case original_title = "original_title"
        case genre_ids = "genre_ids"
        case title = "title"
        case vote_average = "vote_average"
        case overview = "overview"
        case release_date = "release_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        popularity = try values.decodeIfPresent(Double.self, forKey: .popularity)
        vote_count = try values.decodeIfPresent(Int.self, forKey: .vote_count)
        video = try values.decodeIfPresent(Bool.self, forKey: .video)
        poster_path = try values.decodeIfPresent(String.self, forKey: .poster_path)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        adult = try values.decodeIfPresent(Bool.self, forKey: .adult)
        backdrop_path = try values.decodeIfPresent(String.self, forKey: .backdrop_path)
        original_language = try values.decodeIfPresent(String.self, forKey: .original_language)
        original_title = try values.decodeIfPresent(String.self, forKey: .original_title)
        genre_ids = try values.decodeIfPresent([Int].self, forKey: .genre_ids)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        vote_average = try values.decodeIfPresent(Double.self, forKey: .vote_average)
        overview = try values.decodeIfPresent(String.self, forKey: .overview)
        release_date = try values.decodeIfPresent(String.self, forKey: .release_date)
    }

}

