//
//  Model.swift
//  TRNewsAPICallApp
//
//  Created by Mahmut Senbek on 5.12.2022.
//

import Foundation

//MARK: - Response
struct Response: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}
// MARK: - Article
struct Article: Decodable {
    
    let author: String?
    let title, articleDescription: String?
    let url: String
    let urlToImage: String
    let publishedAt: String
    let content: String?

    enum CodingKeys: String, CodingKey {
        case  author, title
        case publishedAt = "publishedAt"
        case articleDescription = "description"
        case url, urlToImage, content
    }
    
  
    
}

/*/
// MARK: - Result
struct Result: Codable {
    var display_title: String
    var byline, summary_short: String
    var link: Link
    var multimedia: Multimedia

   
}

// MARK: - Link
struct Link: Codable {
    var url: String
    var suggestedLinkText: String

    
}

// MARK: - Multimedia
struct Multimedia: Codable {
    let src: String
}
 
 */


/*
//MARK: - Result
struct Result : Codable {
 
    var display_title : String
    var byline : String
    var summary_short : String
    var link : Link
   var multimedia : Multimedia
 
}
//MARK: - Link
struct Link : Codable {
    var suggested_link_text : String
    var url : String
}
//MARK: - Multimedia

struct Multimedia : Codable {
    var src : String
}

*/

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
/*
import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let status, copyright: String
    let hasMore: Bool
    let numResults: Int
    let results: [Result]

    enum CodingKeys: String, CodingKey {
        case status, copyright
        case hasMore = "has_more"
        case numResults = "num_results"
        case results
    }
}

// MARK: - Result
struct Result: Codable {
    let displayTitle, mpaaRating: String
    let criticsPick: Int
    let byline, headline, summaryShort, publicationDate: String
    let openingDate: String?
    let dateUpdated: String
    let link: Link
    let multimedia: Multimedia

    enum CodingKeys: String, CodingKey {
        case displayTitle = "display_title"
        case mpaaRating = "mpaa_rating"
        case criticsPick = "critics_pick"
        case byline, headline
        case summaryShort = "summary_short"
        case publicationDate = "publication_date"
        case openingDate = "opening_date"
        case dateUpdated = "date_updated"
        case link, multimedia
    }
}

// MARK: - Link
struct Link: Codable {
    let type: LinkType
    let url: String
    let suggestedLinkText: String

    enum CodingKeys: String, CodingKey {
        case type, url
        case suggestedLinkText = "suggested_link_text"
    }
}

enum LinkType: String, Codable {
    case article = "article"
}

// MARK: - Multimedia
struct Multimedia: Codable {
    let type: MultimediaType
    let src: String
    let height, width: Int
}

enum MultimediaType: String, Codable {
    case mediumThreeByTwo210 = "mediumThreeByTwo210"
}

*/

