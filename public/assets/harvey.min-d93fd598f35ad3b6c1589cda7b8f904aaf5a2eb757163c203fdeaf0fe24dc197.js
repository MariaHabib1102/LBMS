// Generated by CoffeeScript 1.3.3
/*
  Harvey, A Second Face for Your Application's JavaScript
  Copyright 2012, Joschka Kintscher
  Released under the MIT License
  https://github.com/harvesthq/harvey/
*/
(function(){var t,e;this.Harvey=function(){function i(){}return i.states={},i.attach=function(e,i){var s;return this.states.hasOwnProperty(e)||(this.states[e]=[],this._add_css_for(e)),s=new t(e,null!=i?i.setup:void 0,null!=i?i.on:void 0,null!=i?i.off:void 0),this.states[e].length||this._watch_query(e),this.states[e].push(s),this._window_matchmedia(e).matches&&this._update_states([s],!0),s},i.detach=function(t){var e,i,s,n,h,r;for(h=this.states[t.condition],r=[],e=s=0,n=h.length;n>s;e=++s)i=h[e],t===i?r.push(this.states[i.condition][e]=void 0):r.push(void 0);return r},i._watch_query=function(t){var e=this;return this._window_matchmedia(t).addListener(function(i){return e._update_states(e.states[t],i.matches)})},i._update_states=function(t,e){var i,s,n,h;for(h=[],s=0,n=t.length;n>s;s++)i=t[s],e?h.push(i.activate()):h.push(i.deactivate());return h},i._mediaList={},i._window_matchmedia=function(t){return window.matchMedia&&"addListener"in window.matchMedia("all")?(t in this._mediaList||(this._mediaList[t]=window.matchMedia(t)),this._mediaList[t]):(this._listening||this._listen(),t in this._mediaList||(this._mediaList[t]=new e(t)),this._mediaList[t])},i._listen=function(){var t,e=this;return t=window.addEventListener||window.attachEvent,t("resize",function(){var t,i,s,n;s=e._mediaList,n=[];for(i in s)t=s[i],n.push(t._process());return n}),t("orientationChange",function(){var t,i,s,n;s=e._mediaList,n=[];for(i in s)t=s[i],n.push(t._process());return n}),this._listening=!0},i._add_css_for=function(t){return this.style||(this.style=document.createElement("style"),this.style.setAttribute("type","text/css"),document.getElementsByTagName("head")[0].appendChild(this.style)),t="@media "+t+" {.harvey-test{}}",this.style.styleSheet?void 0:this.style.appendChild(document.createTextNode(t))},i}(),t=function(){function t(t,e,i,s){this.condition=t,this.setup=e,this.on=i,this.off=s}return t.prototype.active=!1,t.prototype.is_setup=!1,t.prototype.activate=function(){return this.active?void 0:(this.is_setup||("function"==typeof this.setup&&this.setup(),this.is_setup=!0),"function"==typeof this.on&&this.on(),this.active=!0)},t.prototype.deactivate=function(){return this.active?("function"==typeof this.off&&this.off(),this.active=!1):void 0},t}(),e=function(){function t(t){this.media=t,this._listeners=[],this.matches=this._matches()}return t.prototype.addListener=function(t){return void this._listeners.push(t)},t.prototype._process=function(){var t,e,i,s,n,h;if(e=this._matches(),this.matches!==e){for(this.matches=e,n=this._listeners,h=[],i=0,s=n.length;s>i;i++)t=n[i],h.push(t(this));return h}},t.prototype._matches=function(){return this._tester||this._get_tester(),this._tester.innerHTML='&shy;<style media="'+this.media+'">#harvey-mq-test{width:42px;}</style>',this._tester.removeChild(this._tester.firstChild),42===this._tester.offsetWidth},t.prototype._get_tester=function(){return this._tester=document.getElementById("harvey-mq-test"),this._tester?void 0:this._build_tester()},t.prototype._build_tester=function(){return this._tester=document.createElement("div"),this._tester.id="harvey-mq-test",this._tester.style.cssText="position:absolute;top:-100em",document.body.insertBefore(this._tester,document.body.firstChild)},t}()}).call(this);
