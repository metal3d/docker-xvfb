echo "Listening on :$DISPLAY"
exec Xvfb -ac -listen tcp $arg :$DISPLAY
