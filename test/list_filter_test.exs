defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd numeric elements" do
      list1 = ["1","2","3"]
      list2 = ["1","4","banana"]

      assert ListFilter.call(list1) == 2
      assert ListFilter.call(list2) == 1
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
