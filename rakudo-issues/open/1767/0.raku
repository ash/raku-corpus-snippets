class p_timespec is repr('CPointer') {
    has uint32 $.tv_sec;
    has long $.tv_nanosecs;
}
