{
  config =
    _:
    { pkgs, ... }:
    {
      programs.yazi = {
        yaziPlugins = {
          require.git = { };
          runtimeDeps = [ pkgs.git ];
        };
        settings.plugin = {
          prepend_fetchers = [
            {
              id = "git";
              url = "*";
              run = "git";
            }
            {
              id = "git";
              url = "*/";
              run = "git";
            }
          ];
        };
      };
    };
}
