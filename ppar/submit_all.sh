for i in */*.pbs; do cd `dirname $i`; echo `pwd`; echo "qsub `basename $i`"; qsub `basename $i`; cd ..; done

