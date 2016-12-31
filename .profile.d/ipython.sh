source '/app/.profile.d/python.sh'

echo "IPYTHON_PASSWORD=$IPYTHON_PASSWORD"
if [[ -n "$IPYTHON_PASSWORD" ]]; then
	export IPYTHON_PASSWORD_HASH=$( python -c "from IPython.lib import passwd; print passwd('${IPYTHON_PASSWORD}')" )
fi
echo "IPYTHON_PASSWORD_HASH=$IPYTHON_PASSWORD_HASH"
