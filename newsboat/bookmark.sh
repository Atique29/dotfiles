#!/bin/sh
# this is a simple example script that demonstrates how bookmarking plugins for newsbeuter are implemented
# (c) 2007 Andreas Krennmair
# (c) 2016 Alexander Batischev

url="$1"
title="$2"
description="$3"
feed_title="$4"

echo -e "${url}\n${title}\n${description}\n${feed_title}\n" >> ~/.config/newsboat/bookmarks.txt
