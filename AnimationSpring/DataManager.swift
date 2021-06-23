//
//  DataManager.swift
//  AnimationSpring
//
//  Created by Тарас Панин on 23.06.2021.
//

import Foundation

struct DataManager {
    static let shared = DataManager()
    
    let springPresets = [
            "shake", "pop", "morph", "squeeze",
            "wobble", "swing", "flipX", "flipY",
            "fall", "squeezeLeft", "squeezeRight",
            "squeezeDown", "squeezeUp", "slideLeft",
            "slideRight", "slideDown", "slideUp",
            "fadeIn", "fadeOut", "fadeInLeft",
            "fadeInRight", "fadeInDown", "fadeInUp",
            "zoomIn", "zoomOut", "flash"
        ]
    
    let springCurve = ["spring", "linear", "easeIn", "easeOut", "easeInOut", "aseInSine", "easeOutSine", "easeInOutSine", "aseInQuad", "easeOutQuad", "easeInOutQuad", "easeInCubic"]
    
    let force = 0...2.0
    let duration = 0.5...2.5
    let delay = 0...0.5
    
    private init() {}
}
