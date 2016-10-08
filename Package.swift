import PackageDescription

let package = Package(
    name: "swift-grant-o-meter",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/vapor/postgresql-provider.git", majorVersion: 1, minor: 0),
    ]
)
