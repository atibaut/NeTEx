#!/bin/bash
# Validate all OJP XML examples from the examples/ directory against the OJP XSD schema
#
# You need the binary `xmllint`
# apt-get install libxml2-utils

# The -e flag causes the script to exit as soon as one command returns a non-zero exit code
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Validating NeTEx XML examples ..."

<<<<<<< HEAD
if xmllint --noout --schema xsd/NeTEx_publication.xsd examples/standards/tap_tsi/*xml examples/standards/tap_tsi/*/*xml && xmllint --noout --schema xsd/NeTEx_publication.xsd examples/standards/epiap/*xml && xmllint --noout --schema xsd/NeTEx_publication.xsd examples/functions/deprecation/*.xml examples/functions/calendar/*xml examples/functions/fares/*xml examples/functions/grouping/*xml examples/functions/newModes/*xml examples/functions/patterns/*xml examples/functions/pointOfInterest/*xml examples/functions/simpleNetwork/*xml examples/functions/site/*xml examples/functions/stopPlace/*xml examples/functions/timetable/*xml examples/functions/validityCondition/*xml examples/functions/variant/*xml examples/functions/vehicleSchedule/*xml examples/functions/versioning/*xml examples/standards/epip/*xml examples/standards/era_uic/*xml examples/standards/fxc/*xml examples/standards/gbfs/*xml examples/standards/gtfs/*xml examples/standards/neptune/*xml  examples/standards/noptis/*xml examples/standards/tap_tsi/*xml examples/standards/txc/*xml examples/standards/vdv452/*/*xml examples/standards/vdv452/*/*/*xml; then
=======
if /usr/bin/find examples/functions examples/standards -type f -name "*.xml" -print0 | xargs -0 $SCRIPT_DIR/xmllint --noout --schema xsd/NeTEx_publication.xsd; then
>>>>>>> de021e83a02522cff4ed936408bf927f798aae0d
  echo -e '\033[0;32mValidating NeTEx XML examples succeeded\033[0m'
else
  echo -e '\033[0;31mValidating NeTEx XML examples failed\033[0m'
  exit 1
fi
