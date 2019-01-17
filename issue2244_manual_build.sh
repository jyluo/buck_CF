#!/bin/bash

javac -version -source 8 -target 8 -sourcepath  -g -processorpath ./checker.jar:./checker-qual.jar:./gson-2.8.5.jar \
    -processor org.checkerframework.checker.units.UnitsChecker \
    -AprintAllQualifiers \
    -Anocheckjdk \
    -Werror -verbose \
    -classpath ./checker.jar:./checker-qual.jar:./gson-2.8.5.jar \
     ./src/main/java/issue2244/*.java

    # -Aunits=com.lmax.instrument.Price,com.lmax.instrument.UnitQty,com.lmax.instrument.Cost,com.lmax.instrument.ContractQty,com.lmax.instrument.Tier,com.lmax.time.annotations.Microseconds,com.lmax.time.annotations.Milliseconds,com.lmax.instrument.SecurityId,com.lmax.instrument.InstrumentId,com.lmax.instrument.OrderBookId,com.lmax.instrument.ExternalOrderBookId \
