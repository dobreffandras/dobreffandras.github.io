# dobreffandras.github.io

Hi, I'm András, and this is the repository of my GitHub.io page. The page should serve as a simple introduction site, but also as a CV and a space for my thoughts as blog posts. For this site I use [Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll), the suggested static site generator by GitHub.

## How to use and edit

The power of Jekyll is that you only have to write Markdown pages and the site is generated from these markdowns.
For adding new pages, create a new `.md` file under the `_tabs` folder. Use the same fomt-matter settings.
In order to add a new blogpost create a new `.md` file under the `_posts` folder. Follow the [instructions of Jekyll](https://jekyllrb.com/docs/posts/) when writing a post.

For running the site locally you can use docker. With the `docker-compse up` a container is started with Jekyll installed.
The container serves development purposes, it runs the `jekyll serve` command on startup and binds to the port `4000`. So you can run the locally hosted site at: `http://localhost:4000/`.

The site uses the [Chirpy theme](https://chirpy.cotes.page/).

## Deployment

Pushing the changes to GitHub will trigger GitHub to build and deploy the site.

## License

Unless otherwise noted, all blog posts, articles, photos, graphics, presentations and other media are published under a [Creative Commons Attribution-NonCommercial](https://creativecommons.org/licenses/by-nc/4.0/) license. Unless otherwise noted, all code snippets are available under the [Unlicense](https://choosealicense.com/licenses/unlicense/).
