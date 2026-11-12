use Telemetry; use nqp; loop { nqp::force_gc(); say T<max-rss> }
