<?php

echo 'teste!';

loadModel('WorkingHours');

$wh = WorkingHours::loadFromUserAndDate(1, date('Y-m-d'));
var_dump($wh->getWorkedInterval()->format("%H:%i:%s"));
