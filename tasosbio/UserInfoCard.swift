    import SwiftUI

    struct UserInfoCard: View {
        let title: String
        let value: String
        let image: Image
        var body: some View {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .frame(height: 50)
                .overlay(
                    HStack {
                        // Title Section: Aligned to the left with fixed width
                       // Image(systemName: "phone")
                       
                        image
                                                .resizable()
                                                .frame(width: 24, height: 24) // Adjust the size as needed
                                                .foregroundColor(.blue)
                        
                        Text(title)
                            .font(.system(size: 17, weight: .bold)) // Bold font
                            .foregroundColor(.black) // Strong black color
                            .frame(width: 80, alignment: .leading) // Fixed width for title alignment
                           
                        
                        // Spacer to separate title and value
                        Spacer(minLength: 10)
                        
                        // Value Section: Aligned to the leading edge
                        Text(value)
                            .font(.body)
                            .foregroundStyle(Color("CustomColor"))
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal)
                )
        }
    }

    #Preview {
        VStack {
            UserInfoCard(title: "Phone", value: "041231231232", image: Image(systemName: "phone"))
            UserInfoCard(title: "Mail", value: "anastasios.rig@gmail.com", image: Image(systemName: "mail"))
        }
        .padding()
    }
