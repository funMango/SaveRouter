import SwiftUI

struct ScreenshotView: View {
    var body: some View {
        HStack {                
            VStack(alignment: .leading) {
                Text("스크린샷")
                    .font(.headline)
                    .padding(.bottom, 3)
                
                Text("현재경로: /Users/minho/Desktop/Screenshots")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            
            Spacer()
            
            Button {
                
            } label: {
                Text("경로 설정")
                    
            }
        }
    }
}

#Preview {
    ScreenshotView()
} 