defmodule ExTraktApi.Episodes do
  # https://trakt.docs.apiary.io/#reference/episodes/summary/get-a-single-episode-for-a-show
  def summary(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season || k != :episode end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/episodes/#{params[:episode]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/translations/get-all-episode-translations
  def translations(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season || k != :episode || k != :language end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/episodes/#{params[:episode]}/translations/#{params[:language]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/lists/get-lists-containing-this-episode
  def lists(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season || k != :episode || k != :type || k != :sort end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/episodes/#{params[:episode]}/lists/#{params[:type]}/#{params[:sort]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/ratings/get-episode-ratings
  def ratings(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season || k != :episode end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/episodes/#{params[:episode]}/ratings", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/stats/get-episode-stats
  def stats(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season || k != :episode end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/episodes/#{params[:episode]}/stats", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/episodes/watching/get-users-watching-right-now
  def watching(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season || k != :episode end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/episodes/#{params[:episode]}/watching", new_params, options)
  end
end
