defmodule ExTraktApi.Networks do
  # https://trakt.docs.apiary.io/#reference/networks/list/get-networks
  def list(params \\ [], options \\ []) do
    ExTraktApi.make_request("networks", params, options)
  end
end
