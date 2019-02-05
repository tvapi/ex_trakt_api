defmodule ExTraktApi.People do
  # https://trakt.docs.apiary.io/#reference/people/summary/get-a-single-person
  def summary(params \\ [], options \\ []) do
    "people/{id}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/people/movies/get-movie-credits
  def movies(params \\ [], options \\ []) do
    "people/{id}/movies"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/people/shows/get-show-credits
  def shows(params \\ [], options \\ []) do
    "people/{id}/shows"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/people/lists/get-lists-containing-this-person
  def lists(params \\ [], options \\ []) do
    "people/{id}/lists/{type}/{sort}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
