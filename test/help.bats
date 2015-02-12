#!/usr/bin/env batshit

load ../node_modules/batshit/bin/batshit-helpers

@test "verifies a global npm install with augmented --help text" {
  pushd ..
  run datomic-free -h
  assert_success
  assert_output_contains "npm distribution of datomic-free"
  popd
}
