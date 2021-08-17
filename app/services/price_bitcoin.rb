require 'net/http'
require 'json'

def priceBitcoin
    uri = URI('https://api.coindesk.com/v1/bpi/currentprice.json')

    text = Net::HTTP.get(uri)
    data = JSON.parse(text)

    return data["bpi"]["USD"]["rate_float"]
end