defmodule ExTraktApi.Search do
  # https://trakt.docs.apiary.io/#reference/search/text-query/get-text-query-results
  def text_query(params \\ [], options \\ []) do
    "search/{type}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/search/id-lookup/get-id-lookup-results
  def id_lookup(params \\ [], options \\ []) do
    "search/{id_type}/{id}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
