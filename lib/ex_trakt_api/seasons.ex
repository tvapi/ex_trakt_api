defmodule ExTraktApi.Seasons do
  # https://trakt.docs.apiary.io/#reference/seasons/summary/get-all-seasons-for-a-show
  def summary(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/season/get-single-season-for-a-show
  def season(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season || k != :translations end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/lists/get-lists-containing-this-season
  def lists(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :type || k != :sort end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/lists/#{params[:type]}/#{params[:sort]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/ratings/get-season-ratings
  def ratings(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/ratings", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/stats/get-season-stats
  def stats(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/stats", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/seasons/watching/get-users-watching-right-now
  def watching(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id || k != :season end)
    ExTraktApi.make_request("shows/#{params[:id]}/seasons/#{params[:season]}/watching", new_params, options)
  end
end
