defmodule ExTraktApi.PeopleTest do
  use ExUnit.Case

  test ".summary" do
    response = ExTraktApi.People.summary(id: "bryan-cranston")
    assert response.status_code == 200
  end

  test ".movies" do
    response = ExTraktApi.People.movies(id: "bryan-cranston")
    assert response.status_code == 200
  end

  test ".shows" do
    response = ExTraktApi.People.shows(id: "bryan-cranston")
    assert response.status_code == 200
  end

  test ".lists" do
    response = ExTraktApi.People.lists(id: "bryan-cranston", type: "personal", sort: "popular")
    assert response.status_code == 200
  end
end
