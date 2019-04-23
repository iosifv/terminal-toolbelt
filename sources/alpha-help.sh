#!/usr/bin/env bash
function toolbeltBundleHelp {
    tb-help-fs-find
    tb-help-fs-manage
    tb-help-fun
    tb-help-git
    tb-help-laravel
    tb-help-nginx
    tb-help-node
    tb-help-php
    tb-help-ssh
    tb-help-system
    tb-help-util
}

function toolbeltHelp {
    toolbeltBundleHelp

    tb-help-iosifv
    tb-help-local-paths
    tb-help-locations
    tb-help-tmux
}
