package EDetect;
use strict;
use warnings;

use Exporter qw(import);

our @EXPORT_OK = qw(editor editor_wikilink);

sub editor {
  my $cr = shift;
  return 'Not Specified' if $cr eq '';
  return 'JOSM' if $cr =~ /^JOSM/;
  return 'iD' if $cr =~ /^iD/;
  return 'Potlatch 0.x/1.x' if $cr =~ /^Potlatch [01]/;
  return 'Potlatch 2' if $cr =~ /^Potlatch 2/;
  return 'Merkaartor' if $cr =~ /^Merkaartor/;
  return 'Vespucci' if $cr =~ /^Vespucci/;
  return 'Go Map!!' if $cr =~ /^Go Map/;
  return 'Pushpin' if $cr =~ /^Pushpin/;
  return 'OsmAnd' if $cr =~ /^Osm[Aa]nd/;
  return 'MAPS.ME' if $cr =~ /^MAPS\.ME/;
  return 'rosemary' if $cr =~ /^rosemary/;
  return 'rosemary' if $cr =~ /^wheelmap\.org/;
  return 'bulk_upload.py' if $cr =~ /^bulk_upload\.py/;
  return 'PythonOsmApi' if $cr =~ /PythonOsmApi/;
  return 'OSMPOIEditor' if $cr =~ /^POI\+/;
  return 'OSMPOIEditor' if $cr =~ /^OSMPOIEditor/;
  return 'Level0' if $cr =~ /^Level0/;
  return 'Osmose Editor' if $cr =~ /^Osmose Editor/;
  return 'RawEdit' if $cr =~ /^RawEdit/;
  return 'RawEdit' if $cr =~ /^Osmose Raw Editor/;
  return 'OsmHydrant' if $cr =~ /^OsmHydrant/;
  return 'iLOE' if $cr =~ /^iLOE/;
  return 'YAPIS' if $cr =~ /^YAPIS/;
  return 'Services_OSM' if $cr =~ /^Services_OpenStreetMap/;
  return 'ArcGIS' if $cr =~ /^ArcGIS Editor/;
  return 'osmapis' if $cr =~ /^osmapis/;
  return 'osmapi' if $cr =~ /^osmapi(?:\/.+)?$/;
  return 'FreieTonne' if $cr =~ /^FreieTonne/;
  return 'osmtools' if $cr =~ /^osmtools\//;
  return 'Redaction bot' if $cr =~ /^Redaction bot/;
  return 'upload.py' if $cr =~ /^(?:.*\/)?upload\.py/;
  return 'bulk_upload.py' if $cr =~ /^bulk_upload\.py/;
  return 'bulk_upload_sax.py' if $cr =~ /^bulk_upload_sax\.py/;
  return 'OpenMaps' if $cr =~ /^OpenMaps /;
  return 'Mapzen' if $cr =~ /^Mapzen /;
  return 'WebDRI' if $cr =~ /^WebDRI/;
  return 'KMLManager' if $cr =~ /^KMLManager/;
  return 'osmitter' if $cr =~ /^osmitter/;
  return 'COFFEEDEX 2002' if $cr =~ /^COFFEEDEX 2002/;
  return 'FindvejBot' if $cr =~ /^FindvejBot/;
  return 'Roy' if $cr =~ /^Roy /;
  return 'OSMPhpLib'if $cr =~ /^OSMPhpLib/;
  return 'Fulcrum' if $cr =~ /^Fulcrum /;
  return 'OSMapTuner' if $cr =~ /^OSMapTuner/;
  return 'QGIS' if $cr =~ /^QGIS /;
  return 'OpenSeaMap-Editor' if $cr =~ /^OpenSeaMap-Editor/;
  return 'BigTinCan' if $cr =~ /^BigTinCan /;
  return 'meta' if $cr =~ /^meta$/;
  return 'SviMik' if $cr =~ /^SviMik/;
  return 'My Opening Hours' if $cr =~ /^My Opening Hours/;
  return 'Sputnik.Ru.Adminka' if $cr =~ /^Sputnik\.Ru\.Adminka/;
  return 'OpenBeerMap' if $cr =~ /^OpenBeerMap/;
  return 'Kort' if $cr =~ /^Kort /;
  return 'Nomino' if $cr =~ /Nomino /;
  return 'Route4U' if $cr =~ /^Route4U/;
  return 'Ubiflow' if $cr =~ /^Ubiflow/;
  return 'streetkeysmv' if $cr =~ /^streetkeysmv/;
  return 'Grass and Green' if $cr =~ /^Grass_and_Green/;
  return 'JOSM reverter' if $cr =~ /^reverter;JOSM/;
  return 'fix.loggingroads.org' if $cr =~ /^fix\.loggingroads\.org/;
  return 'MapStalt Mini' if $cr =~ /^MapStalt Mini/;
  return 'osmupload.py' if $cr =~ /^osmupload\.py/;
  return "Jeff's Uploader" if $cr =~ /^Jeff's Uploader/;
  return 'AND node cleaner/retagger' if $cr =~ /^AND /;
  return 'MyUploader' if $cr =~ /^MyUploader/;
  return 'Tayberry' if $cr =~ /^Tayberry/;
  return 'GNOME Maps' if $cr =~ /^gnome-maps/;
  return 'Other';
}

my %wikinames = (
  'Potlatch 0.x/1.x' => 'Potlatch 1',
  'Pushpin' => 'Pushpin OSM',
  'PythonOsmApi' => 'Osmapi',
  'OSMPOIEditor' => 'POI+',
  'rosemary' => 'Rosemary',
  'ArcGIS' => 'ArcGIS Editor for OSM',
  'upload.py' => 'Upload.py',
  'bulk_upload.py' => 'Bulk_upload.py',
  'bulk_upload_sax.py' => 'Bulk_upload_sax.py',
  'OpenMaps' => 'OpenMaps (IZE)',
  'Kort' => 'Kort Game',
  'Mapzen' => 'Mapzen POI Collector',
  'iLOE' => 'ILOE',
  'osmitter' => 'Osmitter',
  'QGIS' => 'QGIS OSM Plugin',
  'Services_OSM' => 'PHP',
  'JOSM reverter' => 'JOSM/Plugins/Reverter',
  'Osmose Editor' => 'Osmose#Osmose_integrated_tags_editor',
  'Redaction bot' => 'OSMF Redaction Bot',
  'OpenSeaMap-Editor' => 'OpenSeaMap#Editor',
  'AND node cleaner/retagger' => 'AND Data'
);

my @wiki_self = (
  'JOSM', 'iD', 'Potlatch 2', 'Merkaartor', 'Vespucci', 'Go Map!!', 'MAPS.ME',
  'OsmAnd', 'Level0', 'OsmHydrant', 'RawEdit', 'Nomino', 'My Opening Hours',
  'FreieTonne', 'MapStalt Mini', 'OSMapTuner'
);
$wikinames{$_} = '' for @wiki_self;

sub editor_wikilink {
  my $e = shift;
  return exists $wikinames{$e} ? "[[".($wikinames{$e} ? $wikinames{$e}.'|' : '')."$e]]" : $e;
}

1;
