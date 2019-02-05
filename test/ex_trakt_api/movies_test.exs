defmodule ExTraktApi.MoviesTest do
  use ExUnit.Case

  test ".trending" do
    response = ExTraktApi.Movies.trending()
    assert response.status_code == 200
  end

  test ".popular" do
    response = ExTraktApi.Movies.popular()
    assert response.status_code == 200
  end

  test ".played" do
    response = ExTraktApi.Movies.played(period: "weekly")
    assert response.status_code == 200
  end

  test ".watched" do
    response = ExTraktApi.Movies.watched(period: "weekly")
    assert response.status_code == 200
  end

  test ".collected" do
    response = ExTraktApi.Movies.collected(period: "weekly")
    assert response.status_code == 200
  end

  test ".anticipated" do
    response = ExTraktApi.Movies.anticipated()
    assert response.status_code == 200
  end

  test ".box_office" do
    response = ExTraktApi.Movies.box_office()
    assert response.status_code == 200
  end

  test ".updates" do
    response = ExTraktApi.Movies.updates(start_date: "2014-09-22")
    assert response.status_code == 200
  end

  test ".summary" do
    response = ExTraktApi.Movies.summary(id: "tron-legacy-2010")
    assert response.status_code == 200
  end

  test ".aliases" do
    response = ExTraktApi.Movies.aliases(id: "tron-legacy-2010")
    assert response.status_code == 200
  end

  test ".releases" do
    response = ExTraktApi.Movies.releases(id: "tron-legacy-2010", country: "us")
    assert response.status_code == 200
  end

  test ".translations" do
    response = ExTraktApi.Movies.translations(id: "tron-legacy-2010", language: "es")
    assert response.status_code == 200
  end

  test ".lists" do
    response = ExTraktApi.Movies.lists(id: "tron-legacy-2010", type: "personal", sort: "popular")
    assert response.status_code == 200
  end

  test ".people" do
    response = ExTraktApi.Movies.people(id: "tron-legacy-2010")
    assert response.status_code == 200
  end

  test ".ratings" do
    response = ExTraktApi.Movies.ratings(id: "tron-legacy-2010")
    assert response.status_code == 200
  end

  test ".related" do
    response = ExTraktApi.Movies.related(id: "tron-legacy-2010")
    assert response.status_code == 200
  end

  test ".stats" do
    response = ExTraktApi.Movies.stats(id: "tron-legacy-2010")
    assert response.status_code == 200
  end

  test ".watching" do
    response = ExTraktApi.Movies.watching(id: "tron-legacy-2010")
    assert response.status_code == 200
  end
end
