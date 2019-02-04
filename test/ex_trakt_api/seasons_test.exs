defmodule ExTraktApi.SeasonsTest do
  use ExUnit.Case

  test ".summary" do
    response = ExTraktApi.Seasons.summary(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".season" do
    response = ExTraktApi.Seasons.season(id: "game-of-thrones", season: "1", translations: "es")
    assert response.status_code == 200
  end

  test ".lists" do
    response = ExTraktApi.Seasons.lists(id: "game-of-thrones", season: "1", type: "personal", sort: "popular")
    assert response.status_code == 200
  end

  test ".ratings" do
    response = ExTraktApi.Seasons.ratings(id: "game-of-thrones", season: "1")
    assert response.status_code == 200
  end

  test ".stats" do
    response = ExTraktApi.Seasons.stats(id: "game-of-thrones", season: "1")
    assert response.status_code == 200
  end

  test ".watching" do
    response = ExTraktApi.Seasons.watching(id: "game-of-thrones", season: "1")
    assert response.status_code == 200
  end
end
