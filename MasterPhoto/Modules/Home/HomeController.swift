import Foundation

class HomeViewModel: ObservableObject {
    @Published var photos: [Photo] = []

    private var model = HomeModel()

    func fetchPhotos() {
        photos = model.fetchPhotos()
    }
}
