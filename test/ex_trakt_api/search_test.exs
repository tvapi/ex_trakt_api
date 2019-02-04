defmodule ExTraktApi.SearchTest do
  use ExUnit.Case

  test ".text_query" do
    response = ExTraktApi.Search.text_query(type: "movie", query: "tron")
    assert response.status_code == 200
  end

  test ".id_lookup" do
    response = ExTraktApi.Search.id_lookup(id_type: "imdb", id: "tt0848228", type: "movie")
    assert response.status_code == 200
  end
end
