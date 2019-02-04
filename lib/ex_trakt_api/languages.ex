defmodule ExTraktApi.Languages do
  # https://trakt.docs.apiary.io/#reference/languages/list/get-languages
  def list(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type end)
    ExTraktApi.make_request("languages/#{params[:type]}", new_params, options)
  end
end
