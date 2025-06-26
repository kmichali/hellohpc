for i in */*.pbs
do
  echo $i
  cd `dirname $i`
  qsub `basename $i`
  cd ..
done

