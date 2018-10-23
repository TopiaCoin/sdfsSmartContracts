cmake_minimum_required(VERSION 3.5)
project(smsc_contract VERSION 1.0.0)

find_package(eosio.cdt)

# add contract
add_contract( smsc smsc_contract smsc.cpp )
