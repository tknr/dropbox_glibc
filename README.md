# dropbox_glibc

https://www.centos.org/forums/viewtopic.php?f=47&t=68050&sid=e1a7120bbfa8117a4e8d2dbf7ed5a0b7&start=10

execute
./install_cheat.sh

and

add this line in dropbox.py, right before subprocess.Popen....., in function start_dropbox

os.environ['LD_PRELOAD'] = "/usr/local/lib64/drobpoxcheat.so"

