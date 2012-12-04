class packages {

  $easybuild_packages = [
    'python-setuptools',
    'environment-modules',
  ]

  package {$easybuild_packages:
    ensure => installed,
  }
}

stage { 'packages': before => Stage['main'] }

class {
  'packages': stage => packages;
}
