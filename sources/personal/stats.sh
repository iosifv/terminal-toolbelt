function _crypto-print-price {
    bitcoin-chart-cli --coin $1 --currency $2 --days 14 --height 0 --width 56
}

function _crypto-print-minimal {
    bitcoin-chart-cli --coin $1 --currency $2 --days 14 --height 4 --width 56
}

function _crypto-print-default {
    bitcoin-chart-cli --coin $1 --currency $2 --days 14 --height 16 --width 56
}

function _crypto-print-long {
    bitcoin-chart-cli --coin $1 --currency $2 --days 90 --height 16
}

function crypto-status {
    _crypto-print-default BTC USD
    _crypto-print-default XTZ EUR
    _crypto-print-default ARK BTC
}

function crypto-status-minimal {
    _crypto-print-minimal BTC USD
    _crypto-print-minimal XTZ EUR
    _crypto-print-minimal ARK BTC
}

function crypto-status-price {
    _crypto-print-price BTC USD
    _crypto-print-price XTZ EUR
    _crypto-print-price ARK BTC
}

function crypto-status-long {
    _crypto-print-long BTC USD
    _crypto-print-long XTZ EUR
    _crypto-print-long ARK BTC
}