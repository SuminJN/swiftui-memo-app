import SwiftUI

struct MemoEditView: View {
    @Binding var memos: [Memo]
    @State var memo: Memo = Memo(title: "", content: "")
    @Environment(\.presentationMode) var presentationMode
    
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
        .navigationBarItems(trailing: Button("Save") {
            memos.append(memo)
            presentationMode.wrappedValue.dismiss()
        }
            .disabled(memo.title.isEmpty || memo.content.isEmpty)
        )
    }
}

//struct MemoEditView_Previews: PreviewProvider {
//    static var previews: some View {
//        MemoEditView()
//    }
//}
