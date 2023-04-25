require 'net/http'
require 'json'
class GithubApi
  BASE_URL = 'https://api.github.com'

  def initialize(access_token: ENV['GITHUB_ACCESS_TOKEN'])
    @access_token = access_token
  end

  def fetch_data(path)
    url = "#{BASE_URL}/#{path}"
    response = send_request(url)

    unless response.code == "200"
      raise "Failed to fetch data from Github API. Response code: #{response.code}"
    end

    JSON.parse(response.body)
  end

  private

  def send_request(url)
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri)
    request["Authorization"] = "token #{@access_token}"
    http.request(request)
  end
end
