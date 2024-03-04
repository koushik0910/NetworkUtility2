//
//  NetworkUtilityiOS.swift
//  NetworkUtility
//
//  Created by Koushik Dutta on 04/03/24.
//

import Foundation

@available(iOS 15.0, *)
public class NetworkUtilityiOS
{
    public static let shared = NetworkUtilityiOS()
    private init(){}
    
    public func request<T: Decodable>(urlRequest: URLRequest) async throws -> T {
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, (200...299).contains(statusCode) else {
                throw NetworkError.invalidResponse
            }
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw NetworkError.network(error)
        }
    }
}
