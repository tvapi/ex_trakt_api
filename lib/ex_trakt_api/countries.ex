defmodule ExTraktApi.Countries do
  # https://trakt.docs.apiary.io/#reference/countries/list/get-countries
  def list(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type end)
    ExTraktApi.make_request("countries/#{params[:type]}", new_params, options)
  end
end
