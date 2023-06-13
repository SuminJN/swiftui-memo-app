import SwiftUI

struct MemoListView: View {
//    @State var memos = [Memo]()
    @State var memos = [Memo(title: "test1", content: "123"), Memo(title: "test2", content: "123"), Memo(title: "test3", content: "123")]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(memos) { memo in
                    NavigationLink(destination: MemoDetailView(memo: memo)) {
                        VStack(alignment: .leading) {
                            Text(memo.title)
                                .font(.headline)
                            Text(memo.content)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Memo")
            .navigationBarItems(trailing: NavigationLink(destination: MemoEditView(memos: $memos)) {
                Image(systemName: "plus")
            })
        }
    }
}

struct MemoListView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListView()
    }
}
