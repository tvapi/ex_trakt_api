defmodule ExTraktApi.Episodes do
  # https://trakt.docs.apiary.io/#reference/episodes/summary/get-a-single-episode-for-a-show
  def summary(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/episodes/{episode}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/translations/get-all-episode-translations
  def translations(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/episodes/{episode}/translations/{language}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/lists/get-lists-containing-this-episode
  def lists(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/episodes/{episode}/lists/{type}/{sort}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/ratings/get-episode-ratings
  def ratings(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/episodes/{episode}/ratings"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/stats/get-episode-stats
  def stats(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/episodes/{episode}/stats"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/watching/get-users-watching-right-now
  def watching(params \\ [], options \\ []) do
    "shows/{id}/seasons/{season}/episodes/{episode}/watching"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
