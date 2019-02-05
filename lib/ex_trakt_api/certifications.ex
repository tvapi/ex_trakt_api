defmodule ExTraktApi.Certifications do
  # https://trakt.docs.apiary.io/#reference/certifications/list/get-certifications
  def list(params \\ [], options \\ []) do
    "certifications/{type}"
    |> ExTraktApi.expand_and_make_request(params, options)
  end
end
