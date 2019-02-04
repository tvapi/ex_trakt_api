defmodule ExTraktApi.GenresTest do
  use ExUnit.Case

  test ".list for movies" do
    response = ExTraktApi.Genres.list(type: "movies")
    assert response.status_code == 200
  end

  test ".list for shows" do
    response = ExTraktApi.Genres.list(type: "shows")
    assert response.status_code == 200
  end
end
