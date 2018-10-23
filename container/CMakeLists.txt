cmake_minimum_required(VERSION 3.5)
project(template_example VERSION 1.0.0)

set(CMAKE_OSX_DEPLOYMENT_TARGET "")

find_package(eosio.cdt)

# add contract
add_contract( container container_contract container.cpp )
