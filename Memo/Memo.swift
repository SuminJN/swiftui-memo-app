import Foundation

struct Memo: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var content: String
}
