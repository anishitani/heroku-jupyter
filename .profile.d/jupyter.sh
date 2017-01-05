#!/bin/bash

source '/app/.profile.d/python.sh'

if [[ -n "${JUPYTER_PASSWORD:+_}" ]]; then
	export JUPYTER_PASSWORD_HASH=$( python -c "from IPython.lib import passwd; print passwd('${JUPYTER_PASSWORD}')" )
fi
