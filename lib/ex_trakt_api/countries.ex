defmodule ExTraktApi.Countries do
  # https://trakt.docs.apiary.io/#reference/countries/list/get-countries
  def list(params \\ [], options \\ []) do
    "countries/{type}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
