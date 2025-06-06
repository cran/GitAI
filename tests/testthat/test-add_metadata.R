test_that("metadata is added to content", {
  mocked_files_content <- dplyr::tibble(
    repo_name = c("TestRepo", "TestRepo"),
    repo_id = c("repo_id", "repo_id"),
    organization = c("org", "org"),
    file_path = c("file1.md", "file2.md"),
    file_content = c("test1", "test2"),
    file_size = c(1, 1),
    repo_url = c("test_URL", "test_URL"),
    api_url = c("test_URL", "test_URL")
  )
  result_with_metadata <- "result" |>
    test_mocker$use() |>
    add_metadata(
      content = mocked_files_content,
      timestamp = Sys.Date()
    )
  expect_true("metadata" %in% names(result_with_metadata))
  expect_type(result_with_metadata[["metadata"]], "list")
  expect_equal(names(result_with_metadata[["metadata"]]), c("repo_url", "files", "timestamp"))
})
