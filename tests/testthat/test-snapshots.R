test_that("snapshots 'hi'", {
  envvar <- Sys.getenv("ABC")
  skip_if_not(envvar == "TRUE")

  expect_snapshot("y")
})

# * Unseting envvar skips test()
# * Unseting envvar skips check()

# * Setting envvar in .Renviron runs the snapshot with test()
# * Setting envvar in .Renviron runs the snapshot with check()

# * Setting envvar in ~/.Renviron runs the snapshot with test(): NO
# * Setting envvar in ~/.Renviron runs the snapshot with check(): NO

# * Unsetting envvar with snapshot.new.md fails with test()
# * Unsetting envvar with snapshot.new.md fails with check()
