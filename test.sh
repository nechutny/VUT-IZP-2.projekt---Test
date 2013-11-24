#!/bin/sh

#
# 	Autor:			Stanislav Nechutný (xnechu01)
#	Název:			1. projekt IZP na FIT VUT - Test
#	Repozitář:		git@github.com:nechutny/VUT-IZP-1.projekt---Test.git
#
# 	upravil Jan Jileček pro proj2

echo "\n[test_1] Test --sqrt 2";
./$1 --sqrt 2 > test/test_1.output
diff test/test_1.test test/test_1.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_1.output;
else
	echo " ... Chyba";
fi

echo "\n[test_2] Test --sqrt 0.055";
./$1 --sqrt 0.055 > test/test_2.output
diff test/test_2.test test/test_2.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_2.output;
else
	echo " ... Chyba";
fi

echo "\n[test_3] Test --sqrt 0";
./$1 --sqrt 0 > test/test_3.output
diff test/test_3.test test/test_3.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_3.output;
else
	echo " ... Chyba";
fi

echo "\n[test_4] Test --sqrt -42";
./$1 --sqrt -42 > test/test_4.output
diff test/test_4.test test/test_4.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_4.output;
else
	echo " ... Chyba";
fi

echo "\n[test_5] Test --asin 0";
./$1 --asin 1 > test/test_5.output
diff test/test_5.test test/test_5.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_5.output;
else
	echo " ... Chyba";
fi

echo "\n[test_6] Test --asin -1.1";
./$1 --asin -1.1 > test/test_6.output
diff test/test_6.test test/test_6.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_6.output;
else
	echo " ... Chyba";
fi

echo "\n[test_7] Test --asin 1";
./$1 --asin 1 > test/test_7.output
diff test/test_7.test test/test_7.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_7.output;
else
	echo " ... Chyba";
fi

echo "\n[test_8] Test --asin 0.99999999";
./$1 --asin 0.99999999 > test/test_8.output
diff test/test_8.test test/test_8.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_8.output;
else
	echo " ... Chyba";
fi

echo "\n[test_9] Test --asin 0.0000001";
./$1 --asin 0.0000001 > test/test_9.output
diff test/test_9.test test/test_9.output

if [ "$?" = "0" ]; then
  echo " ... OK";
   rm test/test_9.output;
else
	echo " ... Chyba";
fi

echo "\n[test_10] Test --triangle 0 0 1 0 0 2";
./$1 --triangle 0 0 1 0 0 2  > test/test_10.output
diff test/test_10.test test/test_10.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_10.output
else
        echo " ... Chyba";
fi

echo "\n[test_11] Test --triangle 0 0 0 0 0 0";
./$1 --triangle 0 0 0 0 0 0  > test/test_11.output
diff test/test_11.test test/test_11.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_11.output
else
        echo " ... Chyba";
fi


echo "\n[test_12] Test zda nespadne pri nesmyslnem vstupu";
./$1 --triangle "You know nuffin Jon Snow"  > /dev/null
./$1 --asin "Rains of Castamere"  > /dev/null
./$1 --sqrt "Daenerys Targaryen"  > /dev/null

if [ "$?" = "0" ]; then
  echo " ... OK";
else
        echo " ... Chyba";
fi
