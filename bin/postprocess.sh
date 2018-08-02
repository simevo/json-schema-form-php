#!/bin/sh

sed -i 's/FatturaElettronica.FatturaElettronicaBody\.0\.DatiBeniServizi.DettaglioLinee\.0/FatturaElettronica.FatturaElettronicaBody[0].DatiBeniServizi.DettaglioLinee[<?php echo $i; ?>]/g' "$1"
sed -i 's/FatturaElettronica-FatturaElettronicaBody-0-DatiBeniServizi-DettaglioLinee-0/FatturaElettronica-FatturaElettronicaBody-0-DatiBeniServizi-DettaglioLinee-<?php echo $i; ?>/g' "$1"

sed -i 's/FatturaElettronica.FatturaElettronicaBody\.0\.DatiBeniServizi.DatiRiepilogo\.0/FatturaElettronica.FatturaElettronicaBody[0].DatiBeniServizi.DatiRiepilogo[<?php echo $j; ?>]/g' "$1"
sed -i 's/FatturaElettronica-FatturaElettronicaBody-0-DatiBeniServizi-DatiRiepilogo-0/FatturaElettronica-FatturaElettronicaBody-0-DatiBeniServizi-DatiRiepilogo-<?php echo $j; ?>/g' "$1"

sed -i 's/FatturaElettronicaBody\.0/FatturaElettronicaBody[0]/g' "$1"


