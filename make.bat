set GTEST_ROOT=C:\googletest-release-1.8.1
set GTEST_INCLUDEDIR="%GTEST_ROOT%\googletest\include"
set GMOCK_INCLUDEDIR=%GTEST_ROOT%\googlemock\include
set GMOCK_LIBDIR=%GTEST_ROOT%\build\googlemock
set GTEST_LIBDIR=%GTEST_ROOT%\build\googlemock\gtest


g++ test\test_sample1.cpp -I %GTEST_INCLUDEDIR% -I "C:\googletest-release-1.8.1\googletest\include\gtest\internal" -I "C:\googletest-release-1.8.1\googletest\include\gtest" -I "src" -L%GTEST_LIBDIR% -lgtest -lgtest_main
