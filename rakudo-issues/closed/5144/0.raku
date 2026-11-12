use Telemetry; my @s = lazy gather loop { take rand x 1024 }; for @s { say T{"max-rss"} }
