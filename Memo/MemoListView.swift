import SwiftUI

struct MemoListView: View {
    @State var memos = [Memo]()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(memos) { memo in
                    NavigationLink(destination: MemoDetailView(memo: memo)) {
                        VStack {
                            Text(memo.title)
                            Text(memo.content)
                        }
                    }
                }
            }
            .navigationTitle("Memo")
        }
    }
}

struct MemoListView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListView()
    }
}
