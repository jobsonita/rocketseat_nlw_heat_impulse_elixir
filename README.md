![License](https://img.shields.io/github/license/jobsonita/rocketseat-nlw-heat-impulse-web?color=blue)
![Erlang version](https://img.shields.io/badge/erlang-OTP_22-brightgreen)
![Elixir version](https://img.shields.io/badge/elixir-v1.12.3-brightgreen)
![Phoenix version](https://img.shields.io/badge/phoenix-~>_1.6.2-blue)
![Quantum version](https://img.shields.io/badge/quantum-~>_3.0-blue)

# :rocket::seat: NLW-Heat - Impulse Track - Elixir Backend

[NLW-Heat](https://nextlevelweek.com/inscricao/7) backend project in Elixir with Phoenix and Quantum

## :hammer: Status

> :white_check_mark: Finished :lock:

## :bookmark: Content Table
<!--ts-->
  * [App Interface](#newspaper-api-call-example)
  * [Technologies](#books-technologies)
  * [Install and Run](#calling-installing-and-running-this-project)
  * [Author and License](#memo-author-and-license)
<!--te-->

## :newspaper: API call example

<p align="center"><img alt="API call example" title="NLW-Heat Impulse API Demonstration" src="./.github/api_demonstration.png" width="720px"/></p>

## :books: Technologies

- [Elixir](https://elixir-lang.org/)
- [Phoenix](https://www.phoenixframework.org/)
- [Quantum](https://hexdocs.pm/quantum/readme.html)
- [Ecto](https://hexdocs.pm/ecto/Ecto.html)
- [Insomnia.REST](https://insomnia.rest/)

## :calling: Installing and running this project

### :wrench: Prerequisites

Before starting, make sure you have [Git](https://git-scm.com/) and [Elixir](https://elixir-lang.org/install.html) (version 1.12 or higher) installed.

### :inbox_tray: Install and run

Clone the project using Git and install its dependencies through Mix:

```bash
git clone https://github.com/jobsonita/rocketseat_nlw_heat_impulse_elixir.git

# wait for git to finish clonning the project, then navigate to the folder and install the dependencies:

cd rocketseat_nlw_heat_impulse_elixir

mix deps.get
mix deps.compile
```

After this is done, configure the database credentials and connection (we're using PostgreSQL in this project) and secret key base in `config/dev.exs`.

Then, create the database and run the migrations:

```bash
mix ecto.create

mix ecto.migrate
```

Finally, run the server:

```bash
mix phx.server
```

### :mag: Testing

Open Insomnia and import the [Insomnia requests file](tools/Insomnia_Requests_2021-10-23.json). Execute the available request to send messages to the api.

<p align="center"><img alt="Insomnia requests" title="NLW-Heat Impulse Insomnia Requests" src="./.github/api_demonstration.png" width="720px"/></p>

Aditionally, the server is configured to generate a map of word frequencies everyday at midnight and output it to the console. You can change this behaviour in [config/config.exs](config/config.exs) by using the available options listed in [Quantum's documentation](https://hexdocs.pm/quantum/configuration.html#content).

You can also execute the interactive elixir cli at the root folder and call the word frequency function directly:

```bash
iex -S mix
## notice: use iex.bat instead when running in a windows machine

## Interactive Elixir (1.12.3)
# iex(1)>
RocketseatNlwHeatImpulseElixir.Tags.Count.call

## Output:
# %{
#   "this" => 1,
#   "is" => 1,
#   "a" => 1,
#   "list" => 1,
#   "of" => 2,
#   "words" => 1,
#   "in" => 1,
#   "the" => 1,
#   "stored" => 1,
#   "messages" => 1,
#   "and" => 1,
#   "their" => 1,
#   "number" => 1,
#   "occurrences" => 1
# }
```

## :memo: Author and License

[![Author: jobsonita](https://avatars.githubusercontent.com/u/1463583?s=48&v=4)](https://github.com/jobsonita/jobsonita) | [Jobson Gilberto](https://github.com/jobsonita/jobsonita)
-|-

[![License](https://img.shields.io/github/license/jobsonita/rocketseat_nlw_heat_impulse_elixir)](LICENSE)
