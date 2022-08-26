//
//  PruebaUI.swift
//  PPT2UITests
//
//  Created by Arturo Jacob Gutiérrez on 25/08/22.
//

import XCTest

class PruebaUI: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testEjemploPiedra() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["botonPiedra"].tap()
        
        let resultado = app.staticTexts.element(matching: .any, identifier: "labelEleccion").label
        
        var prueba = false
        
        if (resultado == "Tú eleccion fue: 🪨") {
            prueba = true
        }
        
        XCTAssert(prueba)
    }
    
    func testEjemploPapel() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["botonPapel"].tap()
        
        let resultado = app.staticTexts.element(matching: .any, identifier: "labelEleccion").label
        
        var prueba = false
        
        if (resultado == "Tú eleccion fue: 🧻") {
            prueba = true
        }
        
        XCTAssert(prueba)
    }
    
    func testEjemploTijeras() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["botonTijera"].tap()
        
        let resultado = app.staticTexts.element(matching: .any, identifier: "labelEleccion").label
        
        var prueba = false
        
        if (resultado == "Tú eleccion fue: ✂️") {
            prueba = true
        }
        
        XCTAssert(prueba)
    }
    
    func testEjemploEmpate() throws {
        let app = XCUIApplication()
        app.launch()
        
        var prueba = false
        
        while prueba == false {
            app.buttons["botonPiedra"].tap()
            let resultado = app.staticTexts.element(matching: .any, identifier: "labelResultado").label
            if (resultado == "Esto ha sido un empate!") {
                prueba = true
                
            }
            else {
                
            }
        }
        XCTAssert(prueba)
        
    }
    
    func testEjemploPiedravsTijera() throws {
        let app = XCUIApplication()
        app.launch()
        
        var prueba = false
        
        while prueba == false {
            app.buttons["botonPiedra"].tap()
            let resultado = app.staticTexts.element(matching: .any, identifier: "labelResultado").label
            if (resultado == "Has ganado, eres un ganador!") {
                prueba = true
                
            }
            else {
                
            }
        }
        XCTAssert(prueba)
        
    }
    
    func testEjemploPiedravsPapel() throws {
        let app = XCUIApplication()
        app.launch()
        
        var prueba = false
        
        while prueba == false {
            app.buttons["botonPiedra"].tap()
            let resultado = app.staticTexts.element(matching: .any, identifier: "labelResultado").label
            if (resultado == "La computadora ganó, eres un perdedor!") {
                prueba = true
                
            }
            else {
                
            }
        }
        XCTAssert(prueba)
        
    }
    
}
