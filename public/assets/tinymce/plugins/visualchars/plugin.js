tinymce.PluginManager.add("visualchars",function(e){function t(t){var n,a,o,c,s,r,l=e.getBody(),u=e.selection;if(i=!i,e.fire("VisualChars",{state:i}),t&&(r=u.getBookmark()),i)for(a=[],tinymce.walk(l,function(e){3==e.nodeType&&e.nodeValue&&-1!=e.nodeValue.indexOf(" ")&&a.push(e)},"childNodes"),o=0;o<a.length;o++){for(c=a[o].nodeValue,c=c.replace(/(\u00a0)/g,'<span data-mce-bogus="1" class="mce-nbsp">$1</span>'),s=e.dom.create("div",null,c);n=s.lastChild;)e.dom.insertAfter(n,a[o]);e.dom.remove(a[o])}else for(a=e.dom.select("span.mce-nbsp",l),o=a.length-1;o>=0;o--)e.dom.remove(a[o],1);u.moveToBookmark(r)}function n(){var t=this;e.on("VisualChars",function(e){t.active(e.state)})}var i;e.addCommand("mceVisualChars",t),e.addButton("visualchars",{title:"Show invisible characters",cmd:"mceVisualChars",onPostRender:n}),e.addMenuItem("visualchars",{text:"Show invisible characters",cmd:"mceVisualChars",onPostRender:n,selectable:!0,context:"view",prependToContext:!0}),e.on("beforegetcontent",function(e){i&&"raw"!=e.format&&!e.draft&&(i=!0,t(!1))})});