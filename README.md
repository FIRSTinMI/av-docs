# FiM AV Docs

Welcome to the code behind [docs.fimav.us](https://docs.fimav.us). This site is generated using Jekyll, automatically built using GitHub Actions, and hosted on GitHub Pages.

## Content Guidelines

- Put all documentation in the `/docs/` folder
- Documentation doesn't need to be in a subfolder, but should be if it makes sense. Feel free to create a new one
  - If a page will have images, don't put it directly in the `/docs/` folder
- Place any images in an `assets/` folder within the same subdirectory as the page itself. Do not use `/assets/`
  - For example, assets for `/docs/troubleshooting-guides/index.md` would go in `/docs/troubleshooting-guides/assets/`
- Ensure any new pages show up in the left navigation, with an order and hierarchy that's intuitive
- If you aren't a core maintainer, please open a PR with your changes
  - Keep in mind as part of the PR build process, your changes will automatically be checked for accessibility and for invalid links, and this step may fail your build. All errors from this build step should be resolved before merging

## Running Locally

### Docker

The easiest way to get going locally without installing any specific tooling (other than Docker) is by using the provided  `docker-compose.yml` file. Simply `cd` into the root directory of this repository, and run:

```bash
docker compose up
```

The site will be available to your computer at <http://localhost:4000>, and any changes that you make should automatically trigger a reload in your browser.


### Alternative Instructions

If you have Ruby and Jekyll set up already, you can run the site locally using this command:

```bash
bundle exec jekyll serve --livereload --port 4000
```

The site will be available at <http://localhost:4000>.