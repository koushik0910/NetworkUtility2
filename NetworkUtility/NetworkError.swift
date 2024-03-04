//
//  NetworkError.swift
//  NetworkUtility
//
//  Created by Koushik Dutta on 04/03/24.
//

import Foundation

public enum NetworkError: Error {
    case invalidResponse
    case network(Error?)
}
