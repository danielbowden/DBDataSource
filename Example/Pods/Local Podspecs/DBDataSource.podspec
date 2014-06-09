Pod::Spec.new do |s|
  s.name             = "DBDataSource"
  s.version          = "0.1.1"
  s.summary          = "DBDataSource is an easy to use datasource conforming to both UITableView and UICollectionView."
  s.description      = <<-DESC
DBDataSource is an easy to use datasource conforming to both UITableView and UICollectionView that can be dropped in to a project to allow quick population of tableviews and collectionviews. Use the CellConfigureBlock to populate the contents of your cell and initialise the datasource with an array.
                       DESC
  s.homepage         = "https://github.com/danielbowden/DBDataSource"
  s.license          = 'MIT'
  s.author           = { "Daniel Bowden" => "github@bowden.in" }
  s.source           = { :git => "https://github.com/danielbowden/DBDataSource.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielgbowden'
s.platform     = :ios
s.ios.deployment_target = '6.0'
  s.requires_arc = true

  s.source_files = 'Classes'
s.public_header_files = 'Classes/**/*.h'
end
