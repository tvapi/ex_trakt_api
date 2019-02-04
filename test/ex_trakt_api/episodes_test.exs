defmodule ExTraktApi.EpisodesTest do
  use ExUnit.Case

  test ".summary" do
    response = ExTraktApi.Episodes.summary(id: "game-of-thrones", season: "1", episode: "1")
    assert response.status_code == 200
  end

  test ".translations" do
    response = ExTraktApi.Episodes.translations(id: "game-of-thrones", season: "1", episode: "1", language: "es")
    assert response.status_code == 200
  end

  test ".lists" do
    response = ExTraktApi.Episodes.lists(id: "game-of-thrones", season: "1", episode: "1", type: "personal", sort: "popular")
    assert response.status_code == 200
  end

  test ".ratings" do
    response = ExTraktApi.Episodes.ratings(id: "game-of-thrones", season: "1", episode: "1")
    assert response.status_code == 200
  end

  test ".stats" do
    response = ExTraktApi.Episodes.stats(id: "game-of-thrones", season: "1", episode: "1")
    assert response.status_code == 200
  end

  test ".watching" do
    response = ExTraktApi.Episodes.watching(id: "game-of-thrones", season: "1", episode: "1")
    assert response.status_code == 200
  end
end
