defmodule ExTraktApi.Search do
  # https://trakt.docs.apiary.io/#reference/search/text-query/get-text-query-results
  def text_query(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type end)
    ExTraktApi.make_request("search/#{params[:type]}", new_params, options)
  end

  # https://trakt.docs.apiary.io/#reference/search/id-lookup/get-id-lookup-results
  def id_lookup(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :id_type || k != :id end)
    ExTraktApi.make_request("search/#{params[:id_type]}/#{params[:id]}", new_params, options)
  end
end
