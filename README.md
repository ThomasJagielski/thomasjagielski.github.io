# Professional Portfolio

For details on this professional portfolio, please see https://techfolios.github.io.

## Local development with Docker

Requires only Docker. To serve the site at http://localhost:4000 with live reload:

```
docker compose up
```

To do a one-off build into `_site/`:

```
docker compose run --rm site bundle exec jekyll build
```

If you change the `Gemfile`, rebuild the image with `docker compose build`.
