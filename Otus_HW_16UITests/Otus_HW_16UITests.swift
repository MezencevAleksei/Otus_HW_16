//
//  Otus_HW_16UITests.swift
//  Otus_HW_16UITests
//
//  Created by alex on 03/10/2019.
//  Copyright © 2019 Mezencev Aleksei. All rights reserved.
//

import XCTest


class Otus_HW_16UITests: XCTestCase {

    var app = XCUIApplication()
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()

        continueAfterFailure = false
    }

    override func tearDown() {
        app.terminate()
        super.tearDown()
           }
    
    func testStratApp(){
        
        app.navigationBars["Feed"].otherElements["Feed"].tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["SuffixArray"]/*[[".cells.staticTexts[\"SuffixArray\"]",".staticTexts[\"SuffixArray\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Create Suffix Array and Test"].tap()
        
        let tabBarsQuery = app.tabBars
        let benchmarkButton = tabBarsQuery.buttons["Benchmark"]
        benchmarkButton.tap()
        tabBarsQuery.buttons["Profile"].tap()
        benchmarkButton.tap()
        
        let benchmarkNavigationBar = app.navigationBars["Benchmark"]
        benchmarkNavigationBar.buttons["Update PieCharts"].tap()
        benchmarkNavigationBar.buttons["Update layout"].tap()
        tabBarsQuery.buttons["Feed"].tap()
        app.navigationBars["Otus_HW_16.SuffixArrayView"].buttons["Назад"].tap()
    }
    
 
    
    
  

//    func testLaunchPerformance() {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
