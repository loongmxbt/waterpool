defmodule Waterpool.ExAdmin.User do
  use ExAdmin.Register

  register_resource Waterpool.User do
  	filter except: [:encrypted_password]
  end
end
