//
//  MockedService.swift
//  UalaLoadingView
//
//  Created by uala on 01/07/21.
//

import Foundation


class MockedService {
    static func callFakeService(completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion()
        }
    }
}
