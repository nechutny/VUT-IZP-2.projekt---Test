#!/bin/sh

#
# Autor:      Stanislav Nechutný (xnechu01) - iniciator testovania
# Upravil:    Jan Jeliček, Adam Lučanský (xlucan01)
# Název:      2. projekt IZP na FIT VUT - Test
# Repozitář:  https://github.com/lucansky/VUT-IZP-2.projekt---Test.git

# Hladanie binarky, kvoli clonovaniu gitu od ineho adresara
exec=`find .. -name "proj2" | tail -n"1"`
echo "${exec}"

if [ "${exec}" = "" ]
then
  echo "Nenasiel sa skompilovany program"
  exit
fi

echo "\n[test_1] Test --sqrt 2";
$exec --sqrt 2 > test/test_1.output
diff test/test_1.test test/test_1.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_1.output;
else
  echo " ... Chyba";
fi

echo "\n[test_2] Test --sqrt 0.055";
$exec --sqrt 0.055 > test/test_2.output
diff test/test_2.test test/test_2.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_2.output;
else
  echo " ... Chyba";
fi

echo "\n[test_3] Test --sqrt 0";
$exec --sqrt 0 > test/test_3.output
diff test/test_3.test test/test_3.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_3.output;
else
  echo " ... Chyba";
fi

echo "\n[test_4] Test --sqrt -42";
$exec --sqrt -42 > test/test_4.output
diff test/test_4.test test/test_4.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_4.output;
else
  echo " ... Chyba";
fi

echo "\n[test_5] Test --asin 0";
$exec --asin 0 > test/test_5.output
diff test/test_5.test test/test_5.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_5.output;
else
  echo " ... Chyba";
fi

echo "\n[test_6] Test --asin -1.1";
$exec --asin -1.1 > test/test_6.output
diff test/test_6.test test/test_6.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_6.output;
else
  echo " ... Chyba";
fi

echo "\n[test_7] Test --asin 1";
$exec --asin 1 > test/test_7.output
diff test/test_7.test test/test_7.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_7.output;
else
  echo " ... Chyba";
fi

echo "\n[test_8] Test --asin 0.99999999";
$exec --asin 0.99999999 > test/test_8.output
diff test/test_8.test test/test_8.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_8.output;
else
  echo " ... Chyba";
fi

echo "\n[test_9] Test --asin 0.0000001";
$exec --asin 0.0000001 > test/test_9.output
diff test/test_9.test test/test_9.output

if [ "$?" = "0" ]; then
  echo " ... OK";
   rm test/test_9.output;
else
  echo " ... Chyba";
fi

echo "\n[test_10] Test --triangle 0 0 1 0 0 2";
$exec --triangle 0 0 1 0 0 2  > test/test_10.output
diff test/test_10.test test/test_10.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_10.output
else
        echo " ... Chyba";
fi

echo "\n[test_11] Test --triangle 0 0 0 0 0 0";
$exec --triangle 0 0 0 0 0 0  > test/test_11.output
diff test/test_11.test test/test_11.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_11.output
else
        echo " ... Chyba";
fi


echo "\n[test_12] Test zda nespadne pri nesmyslnem vstupu";
$exec --triangle "You know nuffin Jon Snow" > /dev/null 2>&1
if [ "$?" != "0" ]; then
  echo " ... OK";
else
        echo " ... Chyba, pri nespravnom parametri sa ocakava z funkcie main return != 0";
fi

$exec --asin "Rains of Castamere" > /dev/null 2>&1
if [ "$?" != "0" ]; then
  echo " ... OK";
else
        echo " ... Chyba, pri nespravnom parametri sa ocakava z funkcie main return != 0";
fi

$exec --sqrt "Daenerys Targaryen" > /dev/null 2>&1

if [ "$?" != "0" ]; then
  echo " ... OK";
else
        echo " ... Chyba, pri nespravnom parametri sa ocakava z funkcie main return != 0";
fi

# Pre istotu
echo "\n[test_13] Test ci program vracia status 0 pri spravnom behu";
$exec --sqrt 2  > /dev/null 2>&1
if [ "$?" = "0" ]; then
  echo " ... OK";
else
        echo " ... Chyba, program ma vratit return EXIT_SUCCESS ak vypocita spravne";
fi
