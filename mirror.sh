#!/usr/bin/env bash

henshin_nightly=http://download.eclipse.org/modeling/emft/henshin/updates/nightly
henshin_nightly_mirror=nightly/

henshin_stable=http://download.eclipse.org/modeling/emft/henshin/updates/1.4.0
henshin_stable_mirror=stable/1.4.0/

eclipse_home=/opt/eclipse

$eclipse_home/eclipse -application org.eclipse.equinox.p2.artifact.repository.mirrorApplication -source $henshin_nightly -destination $henshin_nightly_mirror
$eclipse_home/eclipse -application org.eclipse.equinox.p2.metadata.repository.mirrorApplication -source $henshin_nightly -destination $henshin_nightly_mirror

$eclipse_home/eclipse -application org.eclipse.equinox.p2.artifact.repository.mirrorApplication -source $henshin_stable -destination $henshin_stable_mirror
$eclipse_home/eclipse -application org.eclipse.equinox.p2.metadata.repository.mirrorApplication -source $henshin_stable -destination $henshin_stable_mirror
