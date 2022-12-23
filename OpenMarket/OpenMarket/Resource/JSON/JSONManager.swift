//
//  JSONManager.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/23.
//


// 굳이 여러 타입에서 객체를 생성하지 않고 타입 프로퍼티 or 타입 메서드로 사용하면 좋을 것 같음
// 싱글톤도 하나의 방법이다.
// 우선 Array로 변환하는 메서드만 구현

import Foundation

class JSONManager {
    static let shared = JSONManager()
    private let decoder = JSONDecoder()
    
    private init() { }
    
    func decodeToArray<T: Codable>(from data: Data) -> [T]? {
        return try? self.decoder.decode([T].self, from: data)
    }
}
