// ==UserScript==
// @name         youtube to invidious
// @version      0.1
// @description  none
// @author       WeraPea
// @include      *www.youtube.com/shorts/*
// @run-at       document-start
// ==/UserScript==

document.location.href=document.location.href.replace("/shorts/", "/watch/");
