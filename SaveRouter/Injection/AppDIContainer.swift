//
//  AppDIContainer.swift
//  SaveRouter
//
//  Created by 이민호 on 5/18/25.
//

import Foundation

struct AppDIContainer {
    func getScreenshotViewModel() -> ScreenshotViewModel {
        ScreenshotViewModel(interactor: ScreenshotInteractorImpl())
    }
}
