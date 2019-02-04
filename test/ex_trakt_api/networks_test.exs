defmodule ExTraktApi.NetworksTest do
  use ExUnit.Case

  test ".list" do
    response = ExTraktApi.Networks.list()
    assert response.status_code == 200
  end
end
