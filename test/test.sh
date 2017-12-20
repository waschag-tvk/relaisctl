#! /usr/bin/env sh
python k8056_faker.py &
K8056_DEVICE=/tmp/tty_fake_k8056 make -C .. \
	&& ../relaisctl 1
