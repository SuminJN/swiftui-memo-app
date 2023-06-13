import Foundation

struct Memo: Identifiable {
    let id = UUID()
    var title: String
    var content: String
}
