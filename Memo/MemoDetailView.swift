import SwiftUI

struct MemoDetailView: View {
    @State var memo: Memo
    
    var body: some View {
        VStack {
            TextEditor(text: $memo.title)
                .font(.headline)
                .padding(.vertical, 8)
            Divider()
            TextEditor(text: $memo.content)
                .font(.subheadline)
        }
        .padding()
    }
}

struct MemoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MemoDetailView(memo: Memo(title: "123", content: "123"))
    }
}
