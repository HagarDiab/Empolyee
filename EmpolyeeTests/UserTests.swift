//
//  UserTests.swift
//  EmpolyeeTests
//
//  Created by Hagar Diab on 4/30/20.
//  Copyright © 2020 Hagar Diab. All rights reserved.
//

import XCTest
@testable import Empolyee

class UserTests: XCTestCase {
    
    var user1: User!
    var user2: User!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        user1 = User(username: "Hagar", password: "123456")
        user2 = User(username: "Mohammed", password: "123345678901")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        user1 = nil
        user2 = nil
    }
    
    func testAuthnticate(){
//        if(!user1.authenticat()){
//            XCTFail()
//        }
////
//        if(!user2.authenticat()){
//            XCTFail()
//        }
////
        
        XCTAssertNotNil(user1)
        XCTAssertNotNil(user2)
        
        if(user1 != nil ){
            XCTAssertFalse(user1.authenticat())
            XCTAssertFalse(user1.username.count < 3) //< 5
            XCTAssertEqual(user1.password.count, 10)
        }else{
            XCTFail()
        }
        
        if(user2 != nil ){
            XCTAssertFalse(user2.authenticat())
            XCTAssertFalse(user2.username.count < 3) //< 5
            XCTAssertEqual(user2.password.count, 10)
        }else{
            XCTFail()
        }
        
        
        if(user1 != nil && user2 != nil){
            XCTAssertNotEqual(user1.username, user2.username)
        }
        
    }

}
