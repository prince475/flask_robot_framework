from selenium import webdriver
from selenium.webdriver.chrome.options import Options

def create_chrome_driver():
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--disable-gpu")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--remote-debugging-port=9222")

    # Update the path to where your chromedriver is located
    driver = webdriver.Chrome(executable_path='/path/to/chromedriver', options=chrome_options)
    return driver
