# # Set up project
cd ../core
# ./add_project.sh hadoop-yarn-tls

# Run one PASS and one FAIL CTest
cd run_ctest
python3 run_single_ctest.py org.apache.hadoop.yarn.server.timelineservice.storage.TestFileSystemTimelineReaderImpl#testGetEntityCustomFields hadoop.security.auth_to_local.mechanism=hadoop | tee ../../demo/ctest_pass.log
python3 run_single_ctest.py org.apache.hadoop.yarn.server.timelineservice.storage.TestFileSystemTimelineReaderImpl#testGetEntityCustomFields hadoop.security.auth_to_local.mechanism=cs527 | tee ../../demo/ctest_fail.log