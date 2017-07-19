//
//  JobList.swift
//  vviper
//
//  Created by Blazej SLEBODA on 17/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import XCTest

import Mockit

@testable import vviper

class JobListFactoryTest: XCTestCase {
    
    func testJobListCreateMethod() {
        
        
        let jobList = JobListFactory.create()
        
        XCTAssertNotNil(jobList)
        XCTAssertNotNil(jobList.presenter)
        XCTAssertNotNil(jobList.presenter!.interactor)
        XCTAssertNotNil(jobList.presenter!.router)
        
    }
    
}
