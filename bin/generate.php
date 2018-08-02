#!/usr/bin/php
<?php
// generate a static HTML form from the invoice JSON schema
//
// Copyright (c) 2018, Paolo Greppi <paolo.greppi@simevo.com>
// License: BSD 3-Clause

require_once './vendor/autoload.php';

if (count($argv) <= 1) {
    echo "Usage: generate.php file_schema.json\n";
    exit(-1);
}

$filename = $argv[1];
$retriever = new JsonSchema\Uri\UriRetriever;
$schema = $retriever->retrieve('file://' . realpath($filename));

// Generate
$formGenerator = new JsonSchemaForm\Generator($schema);
echo $formGenerator->render();
