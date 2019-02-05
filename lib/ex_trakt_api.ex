defmodule ExTraktApi do
  use HTTPoison.Base

  def process_url(endpoint) do
    "https://api.trakt.tv/" <> endpoint
  end

  def process_response_body(body) do
    JSX.decode!(body)
  end

  def make_request(endpoint, params \\ [], options \\ []) do
    headers = [
      "Content-Type": "application/json",
      "trakt-api-key": api_key(),
      "trakt-api-version": "2"
    ]

    query_params = if params == [], do: "/", else: "/?" <> URI.encode_query(params)
    get!(endpoint <> query_params, headers, options)
  end

  def api_key do
    Application.get_env(:ex_trakt_api, :api_key) ||
      System.get_env("TRAKT_API_KEY")
  end

  def expand_and_make_request(path, params \\ [], options \\ []) do
    path
    |> UriTemplate.expand(params)
    |> ExTraktApi.make_request(params, options)
  end
end
