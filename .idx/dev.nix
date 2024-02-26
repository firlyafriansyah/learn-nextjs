# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  channel = "stable-23.11"; # "stable-23.11" or "unstable"
  # Use https://search.nixos.org/packages to  find packages
  packages = [
    pkgs.nodejs_21
    # pkgs.python3
    # pkgs.go
  ];
  # Sets environment variables in the workspace
  env = {};
  # search for the extension on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
    # "vscodevim.vim"
  ];
  # preview configuration, identical to monospace.json
  idx.previews = {
    enable = true;
    previews = [
      # The following object sets web previews
      {
        command = [
          "npm"
          "run"
          "dev"
          "--"
          "--port"
          "$PORT"
          "--hostname"
          "0.0.0.0"
        ];
        id = "web";
        manager = "web";
      }
    ];
  };
}
