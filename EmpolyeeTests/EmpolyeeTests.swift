//
//  EmpolyeeTests.swift
//  EmpolyeeTests
//
//  Created by Hagar Diab on 4/30/20.
//  Copyright © 2020 Hagar Diab. All rights reserved.
//

import XCTest
@testable import Empolyee

class EmpolyeeTests: XCTestCase {
    
    var emp1 : Employee!
    var emp2 : Employee!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        emp1 = Employee(name: "Mohammed")
        emp2 = Employee(name: "Diab")
        emp2.grossSalary = 7000
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        emp1 = nil
        emp2 = nil
    }
    
    func testCalcNetSalary(){
        
        emp1.calcNetSalary()
        emp2.calcNetSalary()
        
        if(emp1 != nil){
            if (emp1.grossSalary == nil) {
                XCTFail()
            }
            XCTAssertGreaterThan(emp1.annualNetSalary, emp2.annualNetSalary)
            XCTAssertFalse(emp1.annualNetSalary > emp1.minAnnualNetSalary)
            XCTAssertLessThan(emp1.annualNetSalary, emp1.maxAnnualNetSalary)
            XCTAssertEqual(emp1.deductionsPersentage, 7)
        }

        if(emp2.grossSalary == nil){
            XCTFail()
        }

        XCTAssertGreaterThan(emp2.annualNetSalary, emp1.annualNetSalary)
        XCTAssertLessThan(emp2.annualNetSalary, emp2.maxAnnualNetSalary)
        XCTAssertEqual(emp2.deductionsPersentage, 5)
    }

}
