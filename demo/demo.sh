# # Set up project
cd ../core
./add_project.sh shenyu-common

# Run one PASS and one FAIL CTest
cd run_ctest
python3 run_single_ctest.py org.apache.shenyu.common.config.ShenyuConfigTest#testExtPlugin ExtPlugin.scheduleTime=300 | tee ../../demo/ctest_pass.log
python3 run_single_ctest.py org.apache.shenyu.common.config.ShenyuConfigTest#testExtPlugin ExtPlugin.scheduleTime=null | tee ../../demo/ctest_fail.log