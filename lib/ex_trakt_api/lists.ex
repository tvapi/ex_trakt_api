defmodule ExTraktApi.Lists do
  # https://trakt.docs.apiary.io/#reference/lists/trending/get-trending-lists
  def trending(params \\ [], options \\ []) do
    ExTraktApi.make_request("lists/trending", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/lists/popular/get-popular-lists
  def popular(params \\ [], options \\ []) do
    ExTraktApi.make_request("lists/popular", params, options)
  end
end
