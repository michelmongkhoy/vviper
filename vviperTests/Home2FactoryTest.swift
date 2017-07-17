
//
//  Home2Factory.swift
//  vviper
//
//  Created by Blazej SLEBODA on 17/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import XCTest

@testable import vviper

class Home2FactoryTest: XCTestCase {
    
    func testHomeCreateMethod() {

        let home = Home2Factory.create()
        
        XCTAssertNotNil(home)
        XCTAssertNotNil(home.presenter)
        XCTAssertNotNil(home.presenter!.interactor)
        XCTAssertNotNil(home.presenter!.router)
        
    }
    
}
