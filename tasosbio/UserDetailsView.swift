import SwiftUI

struct UserDetailsView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 20) {
            UserInfoCard(title: "Phone", value: "0402302301230", image: Image(systemName: "phone"))
            
        }
        .padding()
    }
}


#Preview {
    UserDetailsView(user: .init(phoneNumber: "0123456789", email: "user@example.com", location: "London, UK"))
}
