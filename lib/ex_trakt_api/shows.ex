defmodule ExTraktApi.Shows do
  # https://trakt.docs.apiary.io/#reference/shows/trending/get-trending-shows
  def trending(params \\ [], options \\ []) do
    "shows/trending"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/popular/get-popular-shows
  def popular(params \\ [], options \\ []) do
    "shows/popular"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/played/get-the-most-played-shows
  def played(params \\ [], options \\ []) do
    "shows/played/{period}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/watched/get-the-most-watched-shows
  def watched(params \\ [], options \\ []) do
    "shows/watched/{period}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/collected/get-the-most-collected-shows
  def collected(params \\ [], options \\ []) do
    "shows/collected/{period}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/anticipated/get-the-most-anticipated-shows
  def anticipated(params \\ [], options \\ []) do
    "shows/anticipated"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/updates/get-a-show
  def updates(params \\ [], options \\ []) do
    "shows/updates/{start_date}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/summary/get-a-show
  def summary(params \\ [], options \\ []) do
    "shows/{id}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/aliases/get-all-show-aliases
  def aliases(params \\ [], options \\ []) do
    "shows/{id}/aliases"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/translations/get-all-show-translations
  def translations(params \\ [], options \\ []) do
    "shows/{id}/translations/{language}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/lists/get-all-show-translations
  def lists(params \\ [], options \\ []) do
    "shows/{id}/lists/{type}/{sort}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/people/get-all-show-translations
  def people(params \\ [], options \\ []) do
    "shows/{id}/people"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/ratings/get-show-ratings
  def ratings(params \\ [], options \\ []) do
    "shows/{id}/ratings"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/related/get-related-shows
  def related(params \\ [], options \\ []) do
    "shows/{id}/related"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/stats/get-show-stats
  def stats(params \\ [], options \\ []) do
    "shows/{id}/stats"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/watching/get-users-watching-right-now
  def watching(params \\ [], options \\ []) do
    "shows/{id}/watching"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/next-episode/get-next-episode
  def next_episode(params \\ [], options \\ []) do
    "shows/{id}/next_episode"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/last-episode/get-last-episode
  def last_episode(params \\ [], options \\ []) do
    "shows/{id}/last_episode"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
