// ==UserScript==
// @name          Notion RTL
// @namespace     http://userstyles.org
// @description	  RTL layout for Notion.so
// @author        pooya
// @homepage      https://userstyles.org/styles/165143
// @include       https://notion.so/*
// @run-at        document-start
// @version       0.20181023091039
// ==/UserScript==
(function() {var css = ".notion-page-content .notion-selectable {direction: rtl !important;}";
if (typeof GM_addStyle != "undefined") {
	GM_addStyle(css);
} else if (typeof PRO_addStyle != "undefined") {
	PRO_addStyle(css);
} else if (typeof addStyle != "undefined") {
	addStyle(css);
} else {
	var node = document.createElement("style");
	node.type = "text/css";
	node.appendChild(document.createTextNode(css));
	var heads = document.getElementsByTagName("head");
	if (heads.length > 0) {
		heads[0].appendChild(node);
	} else {
		// no head yet, stick it whereever
		document.documentElement.appendChild(node);
	}
}
})();
