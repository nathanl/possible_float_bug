defmodule Foo.ThingsTest do
  use Foo.DataCase
  alias Foo.Things

  describe "create_thing" do
    test "saves floats as expected" do
      # compare to
      # INSERT INTO things (data) VALUES ('{"a": 25030.0, "b": 25200.0}');
      Things.create_thing(%{data: %{a: 25200.0, b: 25030.0}})

      [thing] = Things.list_things()
      # fails: first number is stored as an integer
      assert thing.data === %{"a" => 25200.0, "b" => 25030.0}
    end
  end
end

