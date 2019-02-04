defmodule ExTraktApi.ListsTest do
  use ExUnit.Case

  test ".trending" do
    response = ExTraktApi.Lists.trending()
    assert response.status_code == 200
  end

  test ".popular" do
    response = ExTraktApi.Lists.popular()
    assert response.status_code == 200
  end
end
