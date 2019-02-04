defmodule ExTraktApi.Certifications do
  # https://trakt.docs.apiary.io/#reference/certifications/list/get-certifications
  def list(params \\ [], options \\ []) do
    new_params = Enum.filter(params, fn {k, _} -> k != :type end)
    ExTraktApi.make_request("certifications/#{params[:type]}", new_params, options)
  end
end
