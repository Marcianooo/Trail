import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage() {
        print("---O Botão foi pressionado---")
        print("Status: O numero da Imagem antiga é = \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Ação: O número aleatório gerado é = \(randomNumber)")
        } while randomNumber == imageNumber
        imageNumber = randomNumber
        print("Resultado: O número da nova imagem é = \(imageNumber)")
        print("---Fim da Ação---")
    }
    
    var body: some View {
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                VStack (alignment: .leading) {
                    HStack {
                        Text("Trilha")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors:
                                        [.colorGrayLight,
                                         .colorGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a sheet
                            print("O Botão foi pressionado!")
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    Text("Atividade ao ar livre divertida e prazerosa para amigos e familiares")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.colorGrayMedium)
                } //: HEADER
                .padding(.horizontal, 25)
                // MARK: MAIN CONTENT
                
                
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                //MARK: - FOOTER
                
                Button {
                    // ACTION: Generate a random number
                    randomImage()
                }label: {
                    Text("Explorar Mais")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.colorGreenLight, .colorGreenMedium],
                                           startPoint: .top,
                                           endPoint: .bottom
                                          )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
                
            } //: VSTACK
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
