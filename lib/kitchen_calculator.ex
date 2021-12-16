defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    # Please implement the get_volume/1 function
    {_, vol} = volume_pair
    vol
  end

  def to_milliliter(volume_pair) do
    # Please implement the to_milliliter/1 functions
    case volume_pair do
      {:milliliter, _} -> volume_pair
      {:cup, vol} -> {:milliliter, vol * 240}
      {:fluid_ounce, vol} -> {:milliliter, vol * 30}
      {:teaspoon, vol} -> {:milliliter, vol * 5}
      {:tablespoon, vol} -> {:milliliter, vol * 15}
      true -> false
    end
  end

  def from_milliliter(volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
    case {volume_pair, unit} do
      {{_, ml}, :cup} -> {:cup, ml / 240}
      {{_, ml}, :fluid_ounce} -> {:fluid_ounce, ml / 30}
      {{_, ml}, :teaspoon} -> {:teaspoon, ml / 5}
      {{_, ml}, :tablespoon} -> {:tablespoon, ml / 15}
      {{_, _}, :milliliter} -> volume_pair
      {{_, _}, _} -> volume_pair
    end
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    to_milliliter(volume_pair) |> from_milliliter(unit)
  end
end
