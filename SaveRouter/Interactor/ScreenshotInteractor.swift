//
//  ScreenshotInteractor.swift
//  SaveRouter
//
//  Created by 이민호 on 5/18/25.
//

import AppKit

protocol ScreenshotInteractor {
    func getSelectedFolderPath() -> String?
}

struct ScreenshotInteractorImpl: ScreenshotInteractor {
    private let panel = NSOpenPanel()
    
    func getSelectedFolderPath() -> String? {
        panel.allowsMultipleSelection = false
        panel.canChooseFiles = false
        panel.canChooseDirectories = true
        
        if panel.runModal() == .OK {
            if let url = panel.url {
                return url.path
            }
        }
        
        return nil
    }
}
