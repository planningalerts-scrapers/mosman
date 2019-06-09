require "icon_scraper"

IconScraper.scrape_with_params(
  url: "http://portal.mosman.nsw.gov.au",
  period: "last14days",
  types: [8, 5]
) do |record|
  record["info_url"] = record["info_url"].gsub("/Pages/XC.Track/", "/pages/xc.track/")
  record["address"] = record["address"].gsub("MOSMAN NSW 2088", "Mosman, NSW")
  IconScraper.save(record)
end
