//
//  AudioUnitViewController.swift
//  AURoadieExampleAU
//
//  Created by Simon Haycock on 04/05/2019.
//  Copyright © 2019 Hyper Barn LTD. All rights reserved.
//

import CoreAudioKit

public class AudioUnitViewController: AUViewController, AUAudioUnitFactory {
    var audioUnit: AUAudioUnit?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        if audioUnit == nil {
            return
        }
        
        // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
    }
    
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        audioUnit = try AURoadieExampleAUAudioUnit(componentDescription: componentDescription, options: [])
        
        return audioUnit!
    }
    
}
