defmodule ExTraktApi.ShowsTest do
  use ExUnit.Case

  test ".trending" do
    response = ExTraktApi.Shows.trending()
    assert response.status_code == 200
  end

  test ".popular" do
    response = ExTraktApi.Shows.popular()
    assert response.status_code == 200
  end

  test ".played" do
    response = ExTraktApi.Shows.played(period: "weekly")
    assert response.status_code == 200
  end

  test ".watched" do
    response = ExTraktApi.Shows.watched(period: "weekly")
    assert response.status_code == 200
  end

  test ".collected" do
    response = ExTraktApi.Shows.collected(period: "weekly")
    assert response.status_code == 200
  end

  test ".anticipated" do
    response = ExTraktApi.Shows.anticipated()
    assert response.status_code == 200
  end

  test ".updates" do
    response = ExTraktApi.Shows.updates(start_date: "2014-09-22")
    assert response.status_code == 200
  end

  test ".summary" do
    response = ExTraktApi.Shows.summary(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".aliases" do
    response = ExTraktApi.Shows.aliases(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".translations" do
    response = ExTraktApi.Shows.translations(id: "game-of-thrones", language: "es")
    assert response.status_code == 200
  end

  test ".lists" do
    response = ExTraktApi.Shows.lists(id: "game-of-thrones", type: "personal", sort: "popular")
    assert response.status_code == 200
  end

  test ".people" do
    response = ExTraktApi.Shows.people(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".ratings" do
    response = ExTraktApi.Shows.ratings(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".related" do
    response = ExTraktApi.Shows.related(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".stats" do
    response = ExTraktApi.Shows.stats(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".watching" do
    response = ExTraktApi.Shows.watching(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".next_episode" do
    response = ExTraktApi.Shows.next_episode(id: "game-of-thrones")
    assert response.status_code == 200
  end

  test ".last_episode" do
    response = ExTraktApi.Shows.last_episode(id: "game-of-thrones")
    assert response.status_code == 200
  end
end
