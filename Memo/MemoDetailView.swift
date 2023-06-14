import SwiftUI

struct MemoDetailView: View {
    @Environment(\.dismiss) private var dismiss
    @State var memo: Memo
    
    var body: some View {
        VStack {
            TextField("Title", text: $memo.title)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
            
            TextEditor(text: $memo.content)
                .font(.subheadline)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                .padding(.init(top: 0, leading: 20, bottom: 20, trailing: 20))
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Detail Title")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("뒤로가기")
                    }
                }
            }
        }
    }
}

//struct MemoDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MemoDetailView(memo: Memo(title: "Title", content: "Content"))
//    }
//}
