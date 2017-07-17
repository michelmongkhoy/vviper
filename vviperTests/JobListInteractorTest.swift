//
//  JobListInteractor.swift
//  vviper
//
//  Created by Blazej SLEBODA on 17/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import XCTest

@testable import vviper

class JobListInteractorTest: XCTestCase {
    
    var jobListInteractor : JobListInteractor?
    override func setUp() {
        super.setUp()
        self.jobListInteractor = JobListInteractor()
        
    }
    
    func testJobListSaveFavoriteMethod() {
    
        Mock()
        
        let jobOfferFavoriteUseCaseMock = JobOfferFavoriteUseCaseMock()
        jobOfferFavoriteUseCaseMock.jobNameExpected = "Developer iOS Viadeo"
        jobListInteractor?.jobOfferFavoriteUseCase = jobOfferFavoriteUseCaseMock
        jobListInteractor?.saveFavorite(withJobName: "Developer iOS Viadeo")
        
        
        
//        XCTAssertNotNil(jobList.inte)
//        XCTAssertNotNil(jobList.presenter!.interactor)
//        XCTAssertNotNil(jobList.presenter!.router)
    
    }
    
}

class JobOfferFavoriteUseCaseMock : JobOfferFavoriteUseCase {
    
    var delegate: JobOfferFavoriteUseCase
    
    var jobNameExpected: String?
    
    override func saveJobOfferFavorite(withJobName jobName: String) {
        delegate.saveJobOfferFavorite(withJobName: jobName)
    }
    
}
