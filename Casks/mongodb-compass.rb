cask 'mongodb-compass' do
  version '1.2.0'
  sha256 '64eedf4595b89413590a943dc16088fea8423f72fb98f6cf00f32261a129a1c3'

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'
  license :commercial

  app 'MongoDB Compass.app'

  zap delete: [
                '~/Library/Application Support/MongoDB Compass',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.sfl',
                '~/Library/Caches/MongoDB Compass/',
                '~/Library/Preferences/com.mongodb.compass.plist',
                '~/Library/Saved Application State/com.mongodb.compass.savedState',
              ]
end
