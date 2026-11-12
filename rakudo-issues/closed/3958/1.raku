    method now(:$timezone=$*TZ, :&formatter --> DateTime:D) {
        self.new(nqp::time_n(), :$timezone, :&formatter)
    }
