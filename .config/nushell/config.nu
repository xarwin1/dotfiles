$env.PATH = [
  /usr/local/bin
  /usr/bin
  /bin
]

$env.config.buffer_editor = "nvim"
$env.config.show_banner = false








mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
