defmodule Codesignex.Native do
  @moduledoc ~S"""
  A module to interact with the Rust native code.
  We have native code in this project because we want to use the [apple-codesign](https://crates.io/crates/apple-codesign)
  create.
  """
  use Rustler, otp_app: :codesignex, crate: "codesignex_native"

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
