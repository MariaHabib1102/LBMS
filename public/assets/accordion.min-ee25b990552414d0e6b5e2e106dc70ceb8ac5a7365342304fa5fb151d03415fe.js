!function(t,n,e,a){function i(n,e){this.element=n,this.options=t.extend({},s,e),this._defaults=s,this._name=o,this.init()}var o="accordion",s={transitionSpeed:300,transitionEasing:"ease",controlElement:"[data-control]",contentElement:"[data-content]",groupElement:"[data-accordion-group]",singleOpen:!0};i.prototype.init=function(){function a(t,n,e){var a;return function(){function i(){e||t.apply(o,s),a=null}var o=this,s=arguments;a?clearTimeout(a):e&&t.apply(o,s),a=setTimeout(i,n||100)}}function i(){var t=e.body||e.documentElement,n=t.style,a="transition";if("string"==typeof n[a])return!0;var i=["Moz","webkit","Webkit","Khtml","O","ms"];a="Transition";for(var o=0;o<i.length;o++)if("string"==typeof n[i[o]+a])return!0;return!1}function o(t){return n.requestAnimationFrame||n.webkitRequestAnimationFrame||n.mozRequestAnimationFrame?requestAnimationFrame(t)||webkitRequestAnimationFrame(t)||mozRequestAnimationFrame(t):setTimeout(t,1e3/60)}function s(t,n){n?x.css({"-webkit-transition":"",transition:""}):x.css({"-webkit-transition":"max-height "+v.transitionSpeed+"ms "+v.transitionEasing,transition:"max-height "+v.transitionSpeed+"ms "+v.transitionEasing})}function r(n){var e=0;n.children().each(function(){e+=t(this).outerHeight(!0)}),n.data("oHeight",e)}function c(n,e,a,i){var o,s=n.filter(".open").find("> [data-content]"),r=s.find("[data-accordion].open > [data-content]");v.singleOpen||(r=r.not(e.siblings("[data-accordion].open").find("> [data-content]"))),o=s.add(r),n.hasClass("open")&&o.each(function(){var n=t(this).data("oHeight");switch(i){case"+":t(this).data("oHeight",n+a);break;case"-":t(this).data("oHeight",n-a);break;default:throw"updateParentHeight method needs an operation"}t(this).css("max-height",t(this).data("oHeight"))})}function d(t){if(t.hasClass("open")){var n=t.find("> [data-content]"),e=n.find("[data-accordion].open > [data-content]"),a=n.add(e);r(a),a.css("max-height",a.data("oHeight"))}}function h(t,n){if(t.trigger("accordion.close"),C){if(b){var e=t.parents("[data-accordion]");c(e,t,n.data("oHeight"),"-")}n.css(k),t.removeClass("open")}else n.css("max-height",n.data("oHeight")),n.animate(k,v.transitionSpeed),t.removeClass("open")}function l(t,n){if(t.trigger("accordion.open"),C){if(s(n),b){var e=t.parents("[data-accordion]");c(e,t,n.data("oHeight"),"+")}o(function(){n.css("max-height",n.data("oHeight"))}),t.addClass("open")}else n.animate({"max-height":n.data("oHeight")},v.transitionSpeed,function(){n.css({"max-height":"none"})}),t.addClass("open")}function u(n){var e=(n.closest(v.groupElement),n.siblings("[data-accordion]").filter(".open")),a=e.find("[data-accordion]").filter(".open"),i=e.add(a);i.each(function(){var n=t(this),e=n.find(v.contentElement);h(n,e)}),i.removeClass("open")}function f(){var t=v.singleOpen?E.parents(v.groupElement).length>0:!1;r(x),t&&u(E),E.hasClass("open")?h(E,x):l(E,x)}function m(){H.on("click",f),H.on("accordion.toggle",function(){return v.singleOpen&&H.length>1?!1:void f()}),H.on("accordion.refresh",function(){d(E)}),t(n).on("resize",a(function(){d(E)}))}function g(){x.each(function(){var n=t(this);0!=n.css("max-height")&&(n.closest("[data-accordion]").hasClass("open")?(s(n),r(n),n.css("max-height",n.data("oHeight"))):n.css({"max-height":0,overflow:"hidden"}))}),E.attr("data-accordion")||(E.attr("data-accordion",""),E.find(v.controlElement).attr("data-control",""),E.find(v.contentElement).attr("data-content",""))}var p=this,v=p.options,E=t(p.element),H=E.find("> "+v.controlElement),x=E.find("> "+v.contentElement),w=E.parents("[data-accordion]").length,b=w>0,k={"max-height":0,overflow:"hidden"},C=i();g(),m()},t.fn[o]=function(n){return this.each(function(){t.data(this,"plugin_"+o)||t.data(this,"plugin_"+o,new i(this,n))})}}(jQuery,window,document);
