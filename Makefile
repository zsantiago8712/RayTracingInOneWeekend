.PHONY: create build_all build_libs clean_all clean_libs run

create:
	cmake -S /Users/randymarsh/Developer/RayTracingInOneWeekend -B /Users/randymarsh/Developer/RayTracingInOneWeekend/cmake-build-debug

build_all:
	cmake --build /Users/randymarsh/Developer/RayTracingInOneWeekend/cmake-build-debug --target HasbuRayTracing -j 6
	@cp /Users/randymarsh/Developer/RayTracingInOneWeekend/cmake-build-debug/compile_commands.json /Users/randymarsh/Developer/RayTracingInOneWeekend

build_libs:
	cmake --build /Users/randymarsh/Developer/RayTracingInOneWeekend/cmake-build-debug --target RayTracingLib -j 6
	@cp /Users/randymarsh/Developer/RayTracingInOneWeekend//cmake-build-debug/compile_commands.json /Users/randymarsh/Developer/RayTracingInOneWeekend

clean_all:
	cmake --build /Users/randymarsh/Developer/RayTracingInOneWeekend/cmake-build-debug --target clean -j 6

clean_libs:
	cmake --build /Users/randymarsh/Developer/RayTracingInOneWeekend/cmake-build-debug --target RayTracingLib clean -j 6

run: build_all
	./cmake-build-debug/HasbuRayTracing
	

