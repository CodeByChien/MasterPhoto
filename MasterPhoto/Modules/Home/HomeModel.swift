import Foundation

struct Photo {
    var id: Int
    var imageName: String
    // Các thuộc tính khác của ảnh
}

// Mock data
class HomeModel {
    func fetchPhotos() -> [Photo] {
        // Thực hiện lấy dữ liệu từ API hoặc bất kỳ nguồn dữ liệu nào khác
        return [
            Photo(id: 1, imageName: "photo1"),
            Photo(id: 2, imageName: "photo2"),
            Photo(id: 3, imageName: "photo3")
        ]
    }
}
