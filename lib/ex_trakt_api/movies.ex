defmodule ExTraktApi.Movies do
  # https://trakt.docs.apiary.io/#reference/movies/trending/get-trending-movies
  def trending(params \\ [], options \\ []) do
    "movies/trending"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/popular/get-popular-movies
  def popular(params \\ [], options \\ []) do
    "movies/popular"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/played/get-the-most-played-movies
  def played(params \\ [], options \\ []) do
    "movies/played/{period}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/watched/get-the-most-watched-movies
  def watched(params \\ [], options \\ []) do
    "movies/watched/{period}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/collected/get-the-most-collected-movies
  def collected(params \\ [], options \\ []) do
    "movies/collected/{period}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/anticipated/get-the-most-anticipated-movies
  def anticipated(params \\ [], options \\ []) do
    "movies/anticipated"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/box-office/get-the-weekend-box-office
  def box_office(params \\ [], options \\ []) do
    "movies/boxoffice"
    |> ExTraktApi.make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/updates/get-a-movie
  def updates(params \\ [], options \\ []) do
    "movies/updates/{start_date}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/summary/get-a-movie
  def summary(params \\ [], options \\ []) do
    "movies/{id}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/aliases/get-all-movie-aliases
  def aliases(params \\ [], options \\ []) do
    "movies/{id}/aliases"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/releases/get-all-movie-aliases
  def releases(params \\ [], options \\ []) do
    "movies/{id}/releases/{country}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/translations/get-all-movie-translations
  def translations(params \\ [], options \\ []) do
    "movies/{id}/translations/{language}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/lists/get-all-movie-translations
  def lists(params \\ [], options \\ []) do
    "movies/{id}/lists/{type}/{sort}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/people/get-all-movie-translations
  def people(params \\ [], options \\ []) do
    "movies/{id}/people"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/ratings/get-movie-ratings
  def ratings(params \\ [], options \\ []) do
    "movies/{id}/ratings"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/related/get-related-movies
  def related(params \\ [], options \\ []) do
    "movies/{id}/related"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/stats/get-movie-stats
  def stats(params \\ [], options \\ []) do
    "movies/{id}/stats"
    |> ExTraktApi.expand_and_make_request(params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/watching/get-users-watching-right-now
  def watching(params \\ [], options \\ []) do
    "movies/{id}/watching"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
