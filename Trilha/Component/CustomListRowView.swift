import SwiftUI

struct CustomListRowView: View {
    
    // MARK: - PROPRIEDADES
    @State var listIcon: String
    @State var listColor: Color
    @State var listTitle: String
    @State var listContent: String? = nil // ?Quer dizer que e opcional e nil valor nul
    @State var listLinkTitle: String? = nil
    @State var listLinkDestionation: String? = nil
    
    var body: some View {
        //Advanced Labeled Content
        LabeledContent {
            // Content
            if listContent != nil {
                Text(listContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if (listLinkTitle != nil && listLinkDestionation != nil){
                Link(listLinkTitle!, destination: URL(string: listLinkDestionation!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
                
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            //Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(listColor)
                    Image(systemName: listIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(listTitle)
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView(
            listIcon: "globe",
            listColor: .pink,
            listTitle: "Website",
            listContent: nil,
            listLinkTitle: "Credo Academy",
            listLinkDestionation: "https://credo.academy"
        )
    }
}
