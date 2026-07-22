
## MBEDTLS 3.6
ENV MBEDTLS_VERSION=v3.6.2

RUN git clone --depth 1 --branch ${MBEDTLS_VERSION} --recurse-submodules --shallow-submodules \
	https://github.com/Mbed-TLS/mbedtls.git /tmp/mbedtls

WORKDIR /tmp/mbedtls

RUN make -j \
	&& make -j \
	&& make install \
	&& ldconfig
