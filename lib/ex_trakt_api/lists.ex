defmodule ExTraktApi.Lists do
  # https://trakt.docs.apiary.io/#reference/lists/trending/get-trending-lists
  def trending(params \\ [], options \\ []) do
    "lists/trending"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/lists/popular/get-popular-lists
  def popular(params \\ [], options \\ []) do
    "lists/popular"
    |> ExTraktApi.make_request(params, options)
  end
end
