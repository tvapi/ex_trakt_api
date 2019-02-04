defmodule ExTraktApi.LanguagesTest do
  use ExUnit.Case

  test ".list for movies" do
    response = ExTraktApi.Languages.list(type: "movies")
    assert response.status_code == 200
  end

  test ".list for shows" do
    response = ExTraktApi.Languages.list(type: "shows")
    assert response.status_code == 200
  end
end
