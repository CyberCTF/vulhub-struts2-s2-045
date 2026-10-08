# Struts2 S2-045 (CVE-2017-5638)

[Vulhub](https://vulhub.org)'s [`struts2/s2-045`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/struts2/s2-045) environment, by
phith0n and the Vulhub contributors: an Apache Struts 2.3.30 upload application, vulnerable to S2-045 (OGNL in the Content-Type header). This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/struts2:2.3.30`; the environment folder is vendored in [`app/`](app) and the image's Dockerfile and source in [`base/`](base).

| Machine | Service |
| --- | --- |
| struts2 | Struts 2.3.30 on Jetty, port 8080 |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost:8080/ to see the upload page. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/struts2/s2-045/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
