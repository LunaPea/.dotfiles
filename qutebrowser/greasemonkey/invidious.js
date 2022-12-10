// ==UserScript==
// @name         Redirect channel page to playlist with all videos
// @version      0.1
// @description  none
// @author       WeraPea
// @include      *invidious.werapea.gay/channel/*
// @run-at       document-start
// ==/UserScript==

document.location.href=document.location.href.replace("channel/","playlist?list=");
