#!/usr/bin/env perl6
use v6;
use NativeCall;

sub UAGrayscaleIsEnabled returns int32 is native("/System/Library/PrivateFrameworks/UniversalAccess.framework/UniversalAccess") { * }

say UAGrayscaleIsEnabled();
