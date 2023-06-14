import SwiftUI

struct MemoEditView: View {
    @Binding var memos: [Memo]
    @State var memo: Memo = Memo(title: "", content: "")
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            TextField("Title", text: $memo.title)
                .font(.headline)
                .padding(.vertical, 8)
            Divider()
            TextEditor(text: $memo.content)
                .font(.subheadline)
        }
        .padding()
        .navigationBarTitle("New Memo")
        .navigationBarItems(trailing:
            Button("Save") {
                memos.append(memo)
                dismiss()
            }
            .disabled(memo.title.isEmpty || memo.content.isEmpty)
        )
    }
}

struct MemoEditView_Previews: PreviewProvider {
    static var previews: some View {
        MemoEditView(memos: .constant([Memo(title: "test1", content: "123"), Memo(title: "test2", content: "123"), Memo(title: "test3", content: "123")]))
    }
}
