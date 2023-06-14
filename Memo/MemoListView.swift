import SwiftUI

struct MemoListView: View {
    //    @State var memos = [Memo]()
    @State var memos = [Memo(title: "test1", content: "content"), Memo(title: "test2", content: "content"), Memo(title: "test3", content: "content")]
    
    var body: some View {
        NavigationStack {
            List(memos) { memo in
                NavigationLink(memo.title, value: memo)
            }
            .navigationDestination(for: Memo.self) { memo in
                MemoDetailView(memo: memo)
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
