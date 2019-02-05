defmodule ExTraktApi.Languages do
  # https://trakt.docs.apiary.io/#reference/languages/list/get-languages
  def list(params \\ [], options \\ []) do
    "languages/{type}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
