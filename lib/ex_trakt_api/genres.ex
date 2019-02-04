defmodule ExTraktApi.Genres do
  # https://trakt.docs.apiary.io/#reference/genres/list/get-genres
  def list(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type end)
    ExTraktApi.make_request("genres/#{params[:type]}", new_params, options)
  end
end
