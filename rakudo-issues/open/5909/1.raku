        nqp::p6invokeunder(
          nqp::getattr(nqp::getattr($sig, Signature, '$!code'), Code, '$!do'),
          -> {
              bind(
                $capture, $sig, nqp::ctxcaller(nqp::ctx), 0, NQPMu
              ) != nqp::const::BIND_RESULT_FAIL
             }
        )
