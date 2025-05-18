//
//  ScreenshotViewModel.swift
//  SaveRouter
//
//  Created by 이민호 on 5/15/25.
//

import AppKit

final class ScreenshotViewModel: ObservableObject {
    @Published var currentPath: String = "default path"
    private var interactor: ScreenshotInteractor
    
    init(interactor: ScreenshotInteractor) {
        self.interactor = interactor
    }
        
    func selectFolder() {
        self.currentPath = interactor.getSelectedFolderPath() ?? "경로를 표시할 수 없습니다."
    }
}


