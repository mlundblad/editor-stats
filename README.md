# Calculating Editor Usage Stats

This set of scripts was made for updating the [Editor Usage Stats](http://wiki.openstreetmap.org/wiki/Editor_usage_stats) page
on the OpenStreetMap Wiki. It shows number of changesets, edits and unique users for every popular OSM editor.

## Usage

Download a changeset bz2 file from [planet.osm.org](http://planet.openstreetmap.org/). Then run:

    bzcat changesets-latest.osm.bz2 | ./xml2csv.pl | gzip > changesets.csv.gz

After that use `stats.pl` for calculating stats for a given year or month. By default it
prints statistics for the current year. Specify an optional parameter for filtering dates:

    gzip -dc changesets.csv.gz | ./stats.pl 2015 > 2015.lst

For getting stats for year 2015. You can get stats for a specific month by using e.g. `2016-07` as a parameter.

## Author and License

These scrips were written by Ilya Zverev and published under WTFPL.
