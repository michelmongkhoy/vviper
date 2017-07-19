//
//  JobFavoriteListUseCaseMock.swift
//  vviper
//
//  Created by Blazej SLEBODA on 17/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import XCTest

import Mockit

@testable import vviper

class JobFavoriteListUseCaseMock: JobOfferFavoriteUseCase, Mock  {
    
    let callHandler: CallHandler
    
    init(testCase: XCTestCase) {
        callHandler = CallHandlerImpl(withTestCase: testCase)
    }
    
    func instanceType() -> JobOfferFavoriteUseCase {
        return self
    }
    
    override func getJobOfferFavorites() -> [String]? {
        
        return callHandler.accept("", ofFunction: #function, atFile: #file, inLine: #line, withArgs: nil) as? [String]
    
    }
    
}
