//
//  JobOfferFavoriteUseCaseMock.swift
//  vviper
//
//  Created by Blazej SLEBODA on 17/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import XCTest

import Mockit

@testable import vviper

class JobOfferFavoriteUseCaseMock: JobOfferFavoriteUseCase, Mock {
    
    let callHandler: CallHandler
    
    init(testCase: XCTestCase) {
        callHandler = CallHandlerImpl(withTestCase: testCase)
    }
    
    func instanceType() -> JobOfferFavoriteUseCase {
        return self
    }
    
    override func saveJobOfferFavorite(withJobName jobName: String) {
        callHandler.accept(nil, ofFunction: #function, atFile: #file, inLine: #line, withArgs: nil)

    }
    
}
