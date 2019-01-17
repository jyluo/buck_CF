
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

java_library (
	name = 'hello',
	srcs = glob(['src/main/java/**/*.java']),
	java_version = '1.8',
	provided_deps = [ ':checker-framework', ':checker-qual' ],
# To add annotation processing
	annotation_processors = [ 'org.checkerframework.checker.units.UnitsChecker' ],
	annotation_processor_deps = [ ':checker-framework', ':checker-qual' ],
	annotation_processor_params = [ 'nocheckjdk' ]
)
