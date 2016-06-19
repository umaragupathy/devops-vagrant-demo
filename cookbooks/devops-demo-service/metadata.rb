name             'devops-demo-service'
maintainer       'Uma'
maintainer_email 'umamaheswary@gmail.com'
license          'All rights reserved'
description      'Installs/Configures devops-demo-service'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'maven'
depends 'mysql', '~> 7.0'
depends 'mysql2_chef_gem', '~> 1.1.0'
depends 'database', '~> 5.1.2'
