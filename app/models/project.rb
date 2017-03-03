class Project < ApplicationRecord
  def self.repositories
    response = RestClient.get("https://api.github.com/users/ezrasandzerbell/repos?access_token=23836c41cc754d1be8f934f61374afcb7bdc7a10")
    parsed_response = JSON.parse response
  end
end
