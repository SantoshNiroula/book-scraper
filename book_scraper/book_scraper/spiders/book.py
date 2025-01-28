import scrapy

from book_scraper.items import BookScraperItem


class BookSpider(scrapy.Spider):
    name = "book"
    allowed_domains = ["books.toscrape.com"]
    start_urls = ["https://books.toscrape.com/"]

    def parse(self, response):
        book_item = BookScraperItem()
        for book in response.css("article.product_pod"):
            image_url = book.css("img::attr(src)").extract_first().replace("..", "")
            full_image_url = ("https://books.toscrape.com/" + image_url).replace("//", "/")
            book_item["image"] = full_image_url
            book_item["title"] = book.css("h3 > a::attr(title)").extract_first()
            book_item["price"] = book.css("p.price_color::text").get()

            yield book_item

        next_page = response.css("li.next a::attr(href)").get()
        if next_page is not None:
            yield response.follow(next_page, self.parse)
