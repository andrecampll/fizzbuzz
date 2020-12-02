defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expectedResponse = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expectedResponse
    end

    test "when a invalid file is provided, returns the a error" do
      expectedResponse = {:error, "Error reading the file: enoent"}

      assert FizzBuzz.build("invalid.txt") == expectedResponse
    end
  end
end
