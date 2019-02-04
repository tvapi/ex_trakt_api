defmodule ExTraktApi.Movies do
  # https://trakt.docs.apiary.io/#reference/movies/trending/get-trending-movies
  def trending(params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/trending", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/popular/get-popular-movies
  def popular(params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/popular", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/played/get-the-most-played-movies
  def played(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :period end)
    ExTraktApi.make_request("movies/played/#{params[:period]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/watched/get-the-most-watched-movies
  def watched(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :period end)
    ExTraktApi.make_request("movies/watched/#{params[:period]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/collected/get-the-most-collected-movies
  def collected(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :period end)
    ExTraktApi.make_request("movies/collected/#{params[:period]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/anticipated/get-the-most-anticipated-movies
  def anticipated(params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/anticipated", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/box-office/get-the-weekend-box-office
  def box_office(params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/boxoffice", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/updates/get-a-movie
  def updates(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :start_date end)
    ExTraktApi.make_request("movies/updates/#{params[:start_date]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/summary/get-a-movie
  def summary(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/#{id}", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/aliases/get-all-movie-aliases
  def aliases(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/#{id}/aliases", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/releases/get-all-movie-aliases
  def releases(id, params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :country end)
    ExTraktApi.make_request("movies/#{id}/releases/#{params[:country]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/translations/get-all-movie-translations
  def translations(id, params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :language end)
    ExTraktApi.make_request("movies/#{id}/translations/#{params[:language]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/lists/get-all-movie-translations
  def lists(id, params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type || k != :sort end)
    ExTraktApi.make_request("movies/#{id}/lists/#{params[:type]}/#{params[:sort]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/people/get-all-movie-translations
  def people(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/#{id}/people", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/ratings/get-movie-ratings
  def ratings(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/#{id}/ratings", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/related/get-related-movies
  def related(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/#{id}/related", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/stats/get-movie-stats
  def stats(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/#{id}/stats", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/movies/watching/get-users-watching-right-now
  def watching(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("movies/#{id}/watching", params, options)
  end
end
