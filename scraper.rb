require "icon_scraper"

IconScraper.scrape_with_params(
  url: "http://portal.mosman.nsw.gov.au",
  period: "last14days",
  types: [8, 5]
) do |record|
  IconScraper.save(record)
end
