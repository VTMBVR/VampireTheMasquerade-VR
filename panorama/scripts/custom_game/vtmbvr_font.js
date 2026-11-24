// Lay out the original bitmap glyphs instead of substituting a desktop font.
var VTMBVRBitmapFont = (function () {
    var prefix="file://{images}/custom_game/vtmbvr/fonts/";
    function set(panel,text,size,color,family) {
        text=String(text||"");family=family||"normal";
        var font=VTMBVRFontData[family]||VTMBVRFontData.normal;
        var width=panel.actuallayoutwidth||500;
        var signature=[text,size,color,family,width].join("|");
        if(panel._bitmapSignature===signature)return;
        panel._bitmapSignature=signature;
        var pool=panel._bitmapPool||[],used=0,scale=size/font.height;
        var x=0,y=0,lineHeight=Math.ceil(size*1.25);
        function glyph(c){return font.glyphs[c]||font.glyphs["?"];}
        var words=text.replace(/\r/g,"").split(/(\s+)/);
        for(var w=0;w<words.length;w++) {
            var word=words[w],advance=0;
            for(var j=0;j<word.length;j++){var g=glyph(word[j]);advance+=(g?g.advance:font.height*.35)*scale;}
            if(x>0 && !/^\s+$/.test(word) && x+advance>width){x=0;y+=lineHeight;}
            for(var i=0;i<word.length;i++) {
                var c=word[i],g=glyph(c);
                if(c==="\n"){x=0;y+=lineHeight;continue;}
                if(c==="\t"){x+=size;continue;}
                if(!g)continue;
                if(x>0&&x+g.advance*scale>width){x=0;y+=lineHeight;}
                if(g.file) {
                    var image=pool[used];
                    if(!image){image=$.CreatePanel("Image",panel,"");image.hittest=false;pool.push(image);}
                    image.visible=true;image.SetImage(prefix+g.file);
                    image.style.position=Math.round(x+g.x*scale)+"px "+Math.round(y+g.y*scale)+"px 0px";
                    image.style.width=Math.max(1,Math.round(g.width*scale))+"px";
                    image.style.height=Math.max(1,Math.round(g.height*scale))+"px";
                    image.style.washColor=color;used++;
                }
                x+=g.advance*scale;
            }
        }
        for(var k=used;k<pool.length;k++)pool[k].visible=false;
        panel._bitmapPool=pool;
        panel.style.height=(y+lineHeight)+"px";
    }
    return {set:set};
})();
