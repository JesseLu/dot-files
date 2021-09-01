# Change command prompt to a single green "$".
PS1="\[\033[32m\]$ \[\033[37m\]"   

# Look for packages installed by pip3.
PATH=$PATH:~/.local/bin

# Used to watch a directory, see
# dave.cheney.net/2016/06/21/automatically-run-your-packages-tests-with-inotifywait
nvcc_loop() { while inotifywait --exclude .swp -e modify -r .; do nvcc --std c++11 "$@" -o /tmp/a.out; /tmp/a.out || echo -e '\a'; done; }
