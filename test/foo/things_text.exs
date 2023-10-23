defmodule Foo.ThingsTest do
  use Foo.DataCase
  alias Foo.Things

  describe "create_thing" do
    test "saves and retrieves maps" do
      Things.create_thing(%{data: %{"hi" => "ho", "yo" => 2}})

      [thing] = Things.list_things()
      assert thing.data === %{"hi" => "ho", "yo" => 2}
    end

    test "saves floats as expected" do
      Things.create_thing(%{data: %{a: 25200.0, b: 25030.0}})

      [thing] = Things.list_things()
      assert thing.data === %{"a" => 25200.0, "b" => 25030.0}
    end
  end
end
