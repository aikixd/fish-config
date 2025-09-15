function with-gcc13
    set -lx CC  gcc-13
    set -lx CXX g++-13
    set -lx CUDACXX /usr/local/cuda
    set -lx NVCC_CCBIN /usr/bin/gcc-13
    set -lx NVCC_PREPEND_FLAGS “-ccbin /usr/bin/gcc-13”
    # set -lx PATH /opt/gcc-13/bin $PATH
    fish      # launch subshell
end
