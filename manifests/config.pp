# configures dokuwiki (private)
class dokuwiki::config (
  $basedir = $dokuwiki::params::basedir,
  $version = $dokuwiki::params::version,
) {

  $version_string = "dokuwiki-${version}"

  file { ["${basedir}/${version_string}/conf",
          "${basedir}/${version_string}/data"]:
    ensure  => directory,
    recurse => true,
    owner   => $dokuwiki::params::www_owner,
  }

}
