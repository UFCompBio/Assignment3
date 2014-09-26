#! /bin/bash
for planet in Mercury Venus Earth Mars Jupiter Uranus Neptun
do curl "http://en.wikipedia.org/wiki/$planet" > $planet.txt
if [ -s $planet.txt ]
then
	git add $planet.txt
	git commit -m "[assign1 commit1]"
else
	echo "$planet is empty"
fi
done
