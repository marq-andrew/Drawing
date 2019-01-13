//
//  doDrawing.swift
//  Drawing
//
//  Created by Mark McHugh on 14/1/19.
//  Copyright © 2019 Mark Andrew. All rights reserved.
//

import Cocoa

class doDrawing: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
  /*      var drect = CGRect(x: (dirtyRect.width * 0.25),y: (dirtyRect.height * 0.25),width: (dirtyRect.width * 0.5),height: (dirtyRect.width * 0.5))
 
 */
        
        var drect = CGRect(x: 0,y: 0,width: (dirtyRect.width * 0.01),height: (dirtyRect.width * 0.01))

        let context = NSGraphicsContext.current!.cgContext
        context.saveGState()
        
        //context.setFillColor(NSColor.blue.cgColor)
        //context.fill(dirtyRect)
        
        context.setFillColor(NSColor.red.cgColor)
        
        for var i in 1...1000 {
            drect.offsetBy(dx:-1.0,dy:-1.0)
            context.fillEllipse(in: drect)
        }

        
        context.restoreGState()
    }
    
}
