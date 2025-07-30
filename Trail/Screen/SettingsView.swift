import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Trilha")
                            .font(.system(size: 60, weight: .black))
                        Text("Escolha do Editor")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.colorGreenDark, .colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                VStack {
                    Text("Onde você pode encontrar \nfaixas perfeitas?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("A caminahda, que parece linda nas fotos, é ainda melhor quando voce esta lá. A caminhada  que voce espera fazer novamente algum dia. Encontre as melhores trilhas disponivel.")
                        .font(.footnote)
                        .italic()
                    Text("Tire a poeira das botas. E hora de fazer uma caminhada")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ICONS
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // MARK: - SECTION: ABOUT
            Section ( header: Text("ABOUT THE APP"),
                      footer: HStack {
                Spacer()
                Text("Copyrigth © All right reserved.")
                Spacer()
            }
                .padding(.vertical, 8)
            ){
                CustomListRowView(listIcon: "apps.iphone",listColor: .blue, listTitle: "Application", listContent: "Hike")
                CustomListRowView(listIcon: "info.circle", listColor: .red, listTitle: "Compatibility", listContent: "iOS, iPadOS")
                CustomListRowView(listIcon: "swift", listColor: .orange, listTitle: "Technology", listContent: "Swift")
                CustomListRowView(listIcon: "gear", listColor: .purple, listTitle: "Version", listContent: "1.0")
                CustomListRowView(listIcon: "ellipsis.curlybraces", listColor: .mint, listTitle: "Developer", listContent: "John Doe")
                CustomListRowView(listIcon: "paintpalette", listColor: .pink, listTitle: "Designer", listContent: "Robert Petras")
                CustomListRowView(listIcon: "globe", listColor: .indigo, listTitle: "Website", listLinkTitle: "Credo Academy", listLinkDestionation: "https://credo.academy")
                
                
                
            } //: SECTION
        } //: LIST
    }
}

#Preview {
    SettingsView()
}
