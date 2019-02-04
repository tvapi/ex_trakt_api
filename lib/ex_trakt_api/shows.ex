defmodule ExTraktApi.Shows do
  # https://trakt.docs.apiary.io/#reference/shows/trending/get-trending-shows
  def trending(params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/trending", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/popular/get-popular-shows
  def popular(params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/popular", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/played/get-the-most-played-shows
  def played(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :period end)
    ExTraktApi.make_request("shows/played/#{params[:period]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/watched/get-the-most-watched-shows
  def watched(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :period end)
    ExTraktApi.make_request("shows/watched/#{params[:period]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/collected/get-the-most-collected-shows
  def collected(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :period end)
    ExTraktApi.make_request("shows/collected/#{params[:period]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/anticipated/get-the-most-anticipated-shows
  def anticipated(params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/anticipated", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/updates/get-a-show
  def updates(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :start_date end)
    ExTraktApi.make_request("shows/updates/#{params[:start_date]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/summary/get-a-show
  def summary(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/aliases/get-all-show-aliases
  def aliases(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/aliases", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/translations/get-all-show-translations
  def translations(id, params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :language end)
    ExTraktApi.make_request("shows/#{id}/translations/#{params[:language]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/lists/get-all-show-translations
  def lists(id, params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type || k != :sort end)
    ExTraktApi.make_request("shows/#{id}/lists/#{params[:type]}/#{params[:sort]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/people/get-all-show-translations
  def people(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/people", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/ratings/get-show-ratings
  def ratings(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/ratings", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/related/get-related-shows
  def related(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/related", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/stats/get-show-stats
  def stats(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/stats", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/watching/get-users-watching-right-now
  def watching(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/watching", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/next-episode/get-next-episode
  def next_episode(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/next_episode", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/shows/last-episode/get-last-episode
  def last_episode(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("shows/#{id}/last_episode", params, options)
  end
end
