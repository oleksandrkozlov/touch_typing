FROM ubuntu:22.10

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ccache \
    clang \
    clang-format \
    clang-tidy \
    cmake \
    cppcheck \
    curl \
    doxygen \
    git \
    graphviz \
    iwyu \
    kcov \
    libdocopt-dev \
    libfmt-dev \
    libgtest-dev \
    libspdlog-dev \
    ninja-build \
    pkg-config \
    python3 \
    python3-pip

RUN pip3 install \
    breathe \
    cmakelang \
    sphinx \
    sphinx_rtd_theme

RUN git clone --depth=1 --branch v4.0.0 \
    https://github.com/microsoft/GSL.git gsl \
    && cmake -Hgsl -Bgsl/build -GNinja -DCMAKE_BUILD_TYPE=Release -DGSL_TEST=OFF \
    && cmake --build gsl/build --target install --parallel \
    && rm -rf gsl
