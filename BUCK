
prebuilt_jar(
    name = 'checker-framework',
    binary_jar = 'checker.jar',
    visibility = [ 'PUBLIC' ]
)

prebuilt_jar(
    name = 'checker-qual',
    binary_jar = 'checker-qual.jar',
    visibility = [ 'PUBLIC' ]
)

# general glob of files
# srcs = glob(['src/main/java/**/*.java']),

java_library (
	name = 'hello',
	srcs = glob(['src/main/java/hello/*.java']),
	java_version = '1.8',
	provided_deps = [ ':checker-framework', ':checker-qual' ],
# To add annotation processing
	annotation_processors = [ 'org.checkerframework.checker.units.UnitsChecker' ],
	annotation_processor_deps = [ ':checker-framework', ':checker-qual' ],
	annotation_processor_params = [ 'nocheckjdk' ]
)

prebuilt_jar(
    name = 'google-gson',
    binary_jar = 'gson-2.8.5.jar',
    visibility = [ 'PUBLIC' ]
)

java_library (
    name = 'issue2244',
    srcs = glob(['src/main/java/issue2244/BigDecimalAsPlainStringSerialiser.java']),
    java_version = '1.8',
    provided_deps = [ ':checker-framework', ':checker-qual', ':google-gson' ],
# To add annotation processing
    annotation_processors = [ 'org.checkerframework.checker.units.UnitsChecker' ],
    annotation_processor_deps = [ ':checker-framework', ':checker-qual', ':google-gson' ],
    annotation_processor_params = [ 'nocheckjdk', 'printAllQualifiers' ]
)
