//
//  jobFavoriteList.swift
//  vviper
//
//  Created by Blazej SLEBODA on 17/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import XCTest

import Mockit

@testable import vviper

class JobFavoriteListInteractorTest: XCTestCase {
    
    var jobFavoriteListInteractor : JobFavoriteListInteractor?
    
    override func setUp() {
        super.setUp()
        
        self.jobFavoriteListInteractor = JobFavoriteListInteractor()
    }
    
    func testGetJobOfferFavorites () {
        
        let jobFavoriteListUseCaseMock = JobFavoriteListUseCaseMock()
        
        self.jobFavoriteListInteractor.jobOfferFavoriteUseCase = jobFavoriteListUseCaseMock
        
        jobFavoriteListInteractor.getJobOfferFavorites()
        
        jobFavoriteListUseCaseMock.when().call(withReturnValue: jobFavoriteListUseCaseMock.getJobOfferFavorites()).thenReturn([""])
        
    }
}

import XCTest

import Mockit

@testable import vviper

class JobListInteractorTest: XCTestCase {
    
    var jobListInteractor : JobListInteractor?
    override func setUp() {
        super.setUp()
        
        self.jobListInteractor = JobListInteractor()
        
    }
    
    func testJobListSaveFavoriteMethod() {
        
        let jobOfferFavoriteUseCaseMock = JobOfferFavoriteUseCaseMock(testCase: self)
        
        jobListInteractor?.jobOfferFavoriteUseCase = jobOfferFavoriteUseCaseMock
        jobListInteractor?.saveFavorite(withJobName: "Developer iOS Viadeo")
        
        jobOfferFavoriteUseCaseMock.verify(verificationMode: Once()).saveJobOfferFavorite(withJobName: "Developer iOS Viadeo")
        
        //        XCTAssertNotNil(jobList.inte)
        //        XCTAssertNotNil(jobList.presenter!.interactor)
        //        XCTAssertNotNil(jobList.presenter!.router)
        
    }
    
}

//class JobOfferFavoriteUseCaseMock : JobOfferFavoriteUseCase {
//
//    var delegate: JobOfferFavoriteUseCase
//
//    var jobNameExpected: String?
//
//    override func saveJobOfferFavorite(withJobName jobName: String) {
//        delegate.saveJobOfferFavorite(withJobName: jobName)
//    }
//    
//}
