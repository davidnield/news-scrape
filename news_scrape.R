library(httr2)

req <- request("https://newsapi.org/v2/everything") |>
  req_url_query(
    q = '`"data science"`',
    from = Sys.Date() - 1,
    pageSize = 10,
    apiKey = Sys.getenv("NEWS_API_KEY")
  )

req_perform(req, path = paste0("data/", Sys.Date(), ".json"))

usethis::use_github_action(url = 'https://github.com/posit-conf-2025/r-production/blob/main/3-scrape.yaml', save_as = 'scrape.yml')

