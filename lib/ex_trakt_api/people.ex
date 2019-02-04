defmodule ExTraktApi.People do
  # https://trakt.docs.apiary.io/#reference/people/summary/get-a-single-person
  def summary(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("people/#{id}", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/people/movies/get-movie-credits
  def movies(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("people/#{id}/movies", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/people/shows/get-show-credits
  def shows(id, params \\ [], options \\ []) do
    ExTraktApi.make_request("people/#{id}/shows", params, options)
  end

  # https://trakt.docs.apiary.io/#reference/people/lists/get-lists-containing-this-person
  def lists(id, params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type || k != :sort end)
    ExTraktApi.make_request("people/#{id}/lists/#{params[:type]}/#{params[:sort]}", new_params, options)
  end
end
