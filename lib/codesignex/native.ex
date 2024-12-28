defmodule Codesignex.Native do
  use Rustler, otp_app: :codesignex, crate: "codesignex_native"

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
