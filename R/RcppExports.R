# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

slice_sample_gamma_parameters <- function(data, init, hyper, steps = 20, w = 1) {
    .Call('BTYDplus_slice_sample_gamma_parameters', PACKAGE = 'BTYDplus', data, init, hyper, steps, w)
}

slice_sample_ma_liu <- function(what, x, tx, Tcal, lambda, mu, r, alpha, s, beta) {
    .Call('BTYDplus_slice_sample_ma_liu', PACKAGE = 'BTYDplus', what, x, tx, Tcal, lambda, mu, r, alpha, s, beta)
}

pggg_palive <- function(x, tx, Tcal, k, lambda, mu) {
    .Call('BTYDplus_pggg_palive', PACKAGE = 'BTYDplus', x, tx, Tcal, k, lambda, mu)
}

pggg_slice_sample <- function(what, x, tx, Tcal, litt, k, lambda, mu, tau, t, gamma, r, alpha, s, beta) {
    .Call('BTYDplus_pggg_slice_sample', PACKAGE = 'BTYDplus', what, x, tx, Tcal, litt, k, lambda, mu, tau, t, gamma, r, alpha, s, beta)
}

xbgcnbd_pmf_cpp <- function(params, t, x, dropout_at_zero = FALSE) {
    .Call('BTYDplus_xbgcnbd_pmf_cpp', PACKAGE = 'BTYDplus', params, t, x, dropout_at_zero)
}

xbgcnbd_exp_cpp <- function(params, t, dropout_at_zero = FALSE) {
    .Call('BTYDplus_xbgcnbd_exp_cpp', PACKAGE = 'BTYDplus', params, t, dropout_at_zero)
}

