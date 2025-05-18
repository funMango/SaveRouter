import SwiftUI

struct ScreenshotView: View {
    @StateObject var viewModel: ScreenshotViewModel
    
    var body: some View {
        HStack {                
            VStack(alignment: .leading) {
                Text("스크린샷")
                    .font(.headline)
                    .padding(.bottom, 3)
                
                Text("현재경로: \(viewModel.currentPath)")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            
            Spacer()
            
            Button {
                viewModel.selectFolder()
            } label: {
                Text("경로 설정")                    
            }
        }
    }
}

#Preview {
    let container = AppDIContainer()
    ScreenshotView(viewModel: container.getScreenshotViewModel())
}
