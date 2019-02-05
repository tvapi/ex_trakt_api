defmodule ExTraktApi.Genres do
  # https://trakt.docs.apiary.io/#reference/genres/list/get-genres
  def list(params \\ [], options \\ []) do
    "genres/{type}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
