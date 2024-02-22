{
  project.name = "freshrss";
  services.freshrss = {
    service.image = "lscr.io/linuxserver/freshrss:latest";
    service.restart = "unless-stopped";
    service.volumes = [
      "/docker-local/freshrss/data:/config"
    ];
    service.ports = [
      "8666:80"
    ];
    service.environment = {
      PUID = 1029;
      PGID = 1029;
      TZ = "America/Los_Angeles";
    };
    out.service.pull_policy = "always";
    out.service.cpu_shares = 512;
    out.service.mem_limit = "1g";
    out.service.memswap_limit = "1g";
  };
}
