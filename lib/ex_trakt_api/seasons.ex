defmodule ExTraktApi.Seasons do
  # https://trakt.docs.apiary.io/#reference/seasons/summary/get-all-seasons-for-a-show
  def summary(params \\ [], options \\ []) do
    "shows/{id}/seasons"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/season/get-single-season-for-a-show
  def season(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/lists/get-lists-containing-this-season
  def lists(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/lists/{type}/{sort}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/ratings/get-season-ratings
  def ratings(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/ratings"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/stats/get-season-stats
  def stats(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/stats"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/watching/get-users-watching-right-now
  def watching(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/watching"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
