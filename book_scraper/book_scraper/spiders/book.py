import scrapy

from book_scraper.items import BookScraperItem


class BookSpider(scrapy.Spider):
    name = "book"
    allowed_domains = ["books.toscrape.com"]
    start_urls = ["https://books.toscrape.com/"]

    def parse(self, response):
        book_item = BookScraperItem()
        for book in response.css("article.product_pod"):
            book_item["image"] = book.css("img::attr(src)").extract_first()
            book_item["title"] = book.css("h3 > a::attr(title)").extract_first()
            book_item["price"] = book.css("p.price_color::text").get()

            yield book_item

        # next_page = response.css("li.next a::attr(href)").get()
        # if next_page is not None:
        #     yield response.follow(next_page, self.parse)
