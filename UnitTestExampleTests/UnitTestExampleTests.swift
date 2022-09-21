//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by NL on 12/08/2022.
//

import XCTest
@testable import UnitTestExample

class UnitTestExampleTests: XCTestCase {
    var user: User!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidUser() throws {
        let userName = "w"
        let password = "1231233"
        user = User(userName: userName, password: password)
        let result = user.validUserNamePassword()
        XCTAssertEqual(result.success, true, result.error!)
    }
    
    func testRegisterUser() throws {
        let newUser = User.init(userName: "test", password: "123123")
        let resultRegister = newUser.registerUser()
        XCTAssertEqual(resultRegister, true, "can not register")
        
    }
    
    func testLogin() throws {
        let newUser = User.init(userName: "test", password: "123123")
        let resultLogin = newUser.login()
        XCTAssertEqual(resultLogin, true, "can not login")
    }
    

}
