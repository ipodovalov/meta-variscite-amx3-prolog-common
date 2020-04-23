# TODO: ltp-ddt fails to build with linaro gcc 4.9
# remove this bbappend when fixed

ARAGO_TEST_remove_varsomam33 ="\
    mtd-utils-ubifs-tests \
"

ARAGO_TI_TEST_remove_varsomam33 = "\
    ltp-ddt \
    "

ARAGO_TI_TEST_remove_varsomam43 = "\
    ltp-ddt \
    "

ARAGO_TEST_remove_varsomam33c ="\
    mtd-utils-ubifs-tests \
"

ARAGO_TI_TEST_remove_varsomam33c = "\
    ltp-ddt \
    "
ARAGO_TEST_remove_varsomam33crt ="\
    mtd-utils-ubifs-tests \
"

ARAGO_TI_TEST_remove_varsomam33crt = "\
    ltp-ddt \
    "