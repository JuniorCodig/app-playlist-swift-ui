
import SwiftUI

struct ContentView: View {
    @State var songs: [Music] = [
        Music(title: "Dog Days Are Over", artist: "Florence + The Machine", imageName : "imagem1"),
        Music(title: "Glasshouses", artist: "Maribou State", imageName : "imagem2"),
        Music(title: "Against The Grain", artist: "City and Calour", imageName : "imagem3"),
        Music(title: "Homemade Dynamite", artist: "City and Calour", imageName : "imagem4")]
    
    var body: some View {
        VStack{
            
            VStack{
                Image("album")
                    .resizable()
                    .frame(width: 250, height:260)
                    .scaledToFit()
                    .padding(.bottom, 25)
                
                HStack{
                    Image(systemName: "arrow.down.circle.fill")
                        .font(.system(size: 20	))
                    Image(systemName: "person.fill.badge.plus")
                        .font(.system(size: 20))
                    Spacer()
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 40))
                        .foregroundColor(Color.orange)
                    
                }
                .padding(.leading, 15)
                .padding(.trailing,15)
                
            }
            VStack(alignment:.leading){
                
                Text("Playlist Maneira")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Essa Playlist e destinada aos melhores Jr.")
                Text("Learners do Planeta ADDA")
                HStack{
                    
                    Image("yoda")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .cornerRadius(150)
                    Text("Playlist de Yosda")
                        .fontWeight(.bold)
                        .padding(.top, 3)
                }
                
            }
            .padding(.trailing, 30)
            
            NavigationView {
                List(songs) { song in
                    NavigationLink(destination: Text("Detalhes da Música")) {
                        HStack {
                            Image(song.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            
                            VStack(alignment: .leading) {
                                Text(song.title)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                
                                Text(song.artist)
                                    .font(.subheadline)
                                
                            }
                            Spacer()
                            Text("...")
                                .fontWeight(.bold)
                                .font(.title3)
                        }
                    }
                }
                .listStyle(.inset)
            }
        }
    }
}

struct Music: Identifiable {
    var id = UUID()
    var title: String
    var artist: String
    var imageName: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
