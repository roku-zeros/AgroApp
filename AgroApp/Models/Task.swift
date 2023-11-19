struct Task: Hashable, Codable {
    let id: Int
    let place_name: String
    let type: String
    let lat: Double
    let long: Double
    let duration: Int
    let priority: String
    let processing_area: Int
    let executor: String
    let status: String
}
