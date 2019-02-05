defmodule ExTraktApi.Networks do
  # https://trakt.docs.apiary.io/#reference/networks/list/get-networks
  def list(params \\ [], options \\ []) do
    "networks"
    |> ExTraktApi.make_request(params, options)
  end
end
