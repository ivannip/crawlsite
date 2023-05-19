/*
http://davealger.info
*/

;(function (name, context, definition) {
    if (typeof module !== 'undefined' && module.exports) {
        module.exports = definition();
    } else if (typeof define === 'function' && define.amd) {
        define(definition);
    } else {
        context[name] = definition();
    }
})('DeviceFeatures', this, function () {
    'use strict';
    var DeviceFeatures = function () {
    };
    DeviceFeatures.prototype = {
        get: function () {
            var keys = [];
            keys.push(this.getBrowser());
            var resolution = this.getScreenResolution(); // getScreenResolution + getCanvas = display
            if (typeof resolution !== 'undefined') {
                keys.push(this.getScreenResolution().join('x'));
            }
            keys.push(this.getCanvas());
            keys.push(this.getFontList().join('|'));
            keys.push(navigator.language);
            keys.push(new Date().getTimezoneOffset());
            return keys.join('###');
        }, getScreenResolution: function () {
            return (screen.height > screen.width) ? [screen.height, screen.width] : [screen.width, screen.height];
        }, getCanvas: function () {
            var strOnError, canvas, strCText, strText, strOut;

            strOnError = "Error";
            canvas = null;
            strCText = null;
            strText = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~1!2@3#4$5%6^7&8*9(0)-_=+[{]}|;:',<.>/?";
            strOut = null;

            try {
                canvas = document.createElement('canvas');
                strCText = canvas.getContext('2d');
                strCText.textBaseline = "top";
                strCText.font = "14px 'Arial'";
                strCText.textBaseline = "alphabetic";
                strCText.fillStyle = "#f60";
                strCText.fillRect(125, 1, 62, 20);
                strCText.fillStyle = "#069";
                strCText.fillText(strText, 2, 15);
                strCText.fillStyle = "rgba(102, 204, 0, 0.7)";
                strCText.fillText(strText, 4, 17);
                strOut = canvas.toDataURL();
                return strOut;
            } catch (err) {
                return strOnError;
            }
        }, getFontList: function () {
            var strOnError, style, fonts, count, template, fragment, divs, i, font, div, body, result, e;

            strOnError = "Error";
            style = null;
            fonts = null;
            font = null;
            count = 0;
            template = null;
            divs = null;
            e = null;
            div = null;
            body = null;
            i = 0;

            try {
                style = "position: absolute; visibility: hidden; display: block !important";
                fonts = ["Abadi MT Condensed Light", "Adobe Fangsong Std", "Adobe Hebrew", "Adobe Ming Std", "Agency FB", "Aharoni", "Andalus", "Angsana New", "AngsanaUPC", "Aparajita", "Arab", "Arabic Transparent", "Arabic Typesetting", "Arial Baltic", "Arial Black", "Arial CE", "Arial CYR", "Arial Greek", "Arial TUR", "Arial", "Batang", "BatangChe", "Bauhaus 93", "Bell MT", "Bitstream Vera Serif", "Bodoni MT", "Bookman Old Style", "Braggadocio", "Broadway", "Browallia New", "BrowalliaUPC", "Calibri Light", "Calibri", "Californian FB", "Cambria Math", "Cambria", "Candara", "Castellar", "Casual", "Centaur", "Century Gothic", "Chalkduster", "Colonna MT", "Comic Sans MS", "Consolas", "Constantia", "Copperplate Gothic Light", "Corbel", "Cordia New", "CordiaUPC", "Courier New Baltic", "Courier New CE", "Courier New CYR", "Courier New Greek", "Courier New TUR", "Courier New", "DFKai-SB", "DaunPenh", "David", "DejaVu LGC Sans Mono", "Desdemona", "DilleniaUPC", "DokChampa", "Dotum", "DotumChe", "Ebrima", "Engravers MT", "Eras Bold ITC", "Estrangelo Edessa", "EucrosiaUPC", "Euphemia", "Eurostile", "FangSong", "Forte", "FrankRuehl", "Franklin Gothic Heavy", "Franklin Gothic Medium", "FreesiaUPC", "French Script MT", "Gabriola", "Gautami", "Georgia", "Gigi", "Gisha", "Goudy Old Style", "Gulim", "GulimChe", "GungSeo", "Gungsuh", "GungsuhChe", "Haettenschweiler", "Harrington", "Hei S", "HeiT", "Heisei Kaku Gothic", "Hiragino Sans GB", "Impact", "Informal Roman", "IrisUPC", "Iskoola Pota", "JasmineUPC", "KacstOne", "KaiTi", "Kalinga", "Kartika", "Khmer UI", "Kino MT", "KodchiangUPC", "Kokila", "Kozuka Gothic Pr6N", "Lao UI", "Latha", "Leelawadee", "Levenim MT", "LilyUPC", "Lohit Gujarati", "Loma", "Lucida Bright", "Lucida Console", "Lucida Fax", "Lucida Sans Unicode", "MS Gothic", "MS Mincho", "MS PGothic", "MS PMincho", "MS Reference Sans Serif", "MS UI Gothic", "MV Boli", "Magneto", "Malgun Gothic", "Mangal", "Marlett", "Matura MT Script Capitals", "Meiryo UI", "Meiryo", "Menlo", "Microsoft Himalaya", "Microsoft JhengHei", "Microsoft New Tai Lue", "Microsoft PhagsPa", "Microsoft Sans Serif", "Microsoft Tai Le", "Microsoft Uighur", "Microsoft YaHei", "Microsoft Yi Baiti", "MingLiU", "MingLiU-ExtB", "MingLiU_HKSCS", "MingLiU_HKSCS-ExtB", "Miriam Fixed", "Miriam", "Mongolian Baiti", "MoolBoran", "NSimSun", "Narkisim", "News Gothic MT", "Niagara Solid", "Nyala", "PMingLiU", "PMingLiU-ExtB", "Palace Script MT", "Palatino Linotype", "Papyrus", "Perpetua", "Plantagenet Cherokee", "Playbill", "Prelude Bold", "Prelude Condensed Bold", "Prelude Condensed Medium", "Prelude Medium", "PreludeCompressedWGL Black", "PreludeCompressedWGL Bold", "PreludeCompressedWGL Light", "PreludeCompressedWGL Medium", "PreludeCondensedWGL Black", "PreludeCondensedWGL Bold", "PreludeCondensedWGL Light", "PreludeCondensedWGL Medium", "PreludeWGL Black", "PreludeWGL Bold", "PreludeWGL Light", "PreludeWGL Medium", "Raavi", "Rachana", "Rockwell", "Rod", "Sakkal Majalla", "Sawasdee", "Script MT Bold", "Segoe Print", "Segoe Script", "Segoe UI Light", "Segoe UI Semibold", "Segoe UI Symbol", "Segoe UI", "Shonar Bangla", "Showcard Gothic", "Shruti", "SimHei", "SimSun", "SimSun-ExtB", "Simplified Arabic Fixed", "Simplified Arabic", "Snap ITC", "Sylfaen", "Symbol", "Tahoma", "Times New Roman Baltic", "Times New Roman CE", "Times New Roman CYR", "Times New Roman Greek", "Times New Roman TUR", "Times New Roman", "TlwgMono", "Traditional Arabic", "Trebuchet MS", "Tunga", "Tw Cen MT Condensed Extra Bold", "Ubuntu", "Umpush", "Univers", "Utopia", "Utsaah", "Vani", "Verdana", "Vijaya", "Vladimir Script", "Vrinda", "Webdings", "Wide Latin", "Wingdings"];
                count = fonts.length;
                template = '<b style="display:inline !important; width:auto !important; font:normal 10px/1 \'X\',sans-serif !important">ww</b>' + '<b style="display:inline !important; width:auto !important; font:normal 10px/1 \'X\',monospace !important">ww</b>';
                fragment = document.createDocumentFragment();
                divs = [];
                for (i = 0; i < count; i = i + 1) {
                    font = fonts[i];
                    div = document.createElement('div');
                    font = font.replace(/['"<>]/g, '');
                    div.innerHTML = template.replace(/X/g, font);
                    div.style.cssText = style;
                    fragment.appendChild(div);
                    divs.push(div);
                }
                body = document.body;
                body.insertBefore(fragment, body.firstChild);
                result = [];
                for (i = 0; i < count; i = i + 1) {
                    e = divs[i].getElementsByTagName('b');
                    if (e[0].offsetWidth === e[1].offsetWidth) {
                        result.push(fonts[i]);
                    }
                }
                // do not combine these two loops, remove child will cause reflow
                // and induce severe performance hit
                for (i = 0; i < count; i = i + 1) {
                    body.removeChild(divs[i]);
                }
                return result;
            } catch (err) {
                return strOnError;
            }
        }, getBrowser: function () {
            "use strict";
            var strUserAgent, strBrowser;

            strUserAgent = null;
            strBrowser = null;

            try {
                strUserAgent = navigator.userAgent.toLowerCase();
                if (strUserAgent.indexOf("msie") > -1 || strUserAgent.indexOf("trident/7") > -1) {
                    strBrowser = "Internet Explorer";
                } else if (strUserAgent.indexOf("firefox") > -1) {
                    strBrowser = "Firefox";
                } else if (strUserAgent.indexOf("opera") > -1) {
                    strBrowser = "Opera";
                } else if (strUserAgent.indexOf("edg") > -1) {
                    strBrowser = "Edge";
                } else if (strUserAgent.indexOf("chrome") > -1) {
                    strBrowser = "Chrome";
                } else if (strUserAgent.indexOf("safari") > -1) {
                    strBrowser = "Safari";
                } else {
                    strBrowser = "Unknown";
                }
                return strBrowser;
            } catch (err) {
                return "Unknown";
            }
        }
    };
    return DeviceFeatures;
});

function murmurhash3_32_gc(key, seed) {
    var remainder, bytes, h1, h1b, c1, c1b, c2, c2b, k1, i;

    remainder = key.length & 3; // key.length % 4
    bytes = key.length - remainder;
    h1 = seed;
    c1 = 0xcc9e2d51;
    c2 = 0x1b873593;
    i = 0;

    while (i < bytes) {
        k1 =
            ((key.charCodeAt(i) & 0xff)) |
            ((key.charCodeAt(++i) & 0xff) << 8) |
            ((key.charCodeAt(++i) & 0xff) << 16) |
            ((key.charCodeAt(++i) & 0xff) << 24);
        ++i;

        k1 = ((((k1 & 0xffff) * c1) + ((((k1 >>> 16) * c1) & 0xffff) << 16))) & 0xffffffff;
        k1 = (k1 << 15) | (k1 >>> 17);
        k1 = ((((k1 & 0xffff) * c2) + ((((k1 >>> 16) * c2) & 0xffff) << 16))) & 0xffffffff;

        h1 ^= k1;
        h1 = (h1 << 13) | (h1 >>> 19);
        h1b = ((((h1 & 0xffff) * 5) + ((((h1 >>> 16) * 5) & 0xffff) << 16))) & 0xffffffff;
        h1 = (((h1b & 0xffff) + 0x6b64) + ((((h1b >>> 16) + 0xe654) & 0xffff) << 16));
    }

    k1 = 0;

    switch (remainder) {
        case 3:
            k1 ^= (key.charCodeAt(i + 2) & 0xff) << 16;
        case 2:
            k1 ^= (key.charCodeAt(i + 1) & 0xff) << 8;
        case 1:
            k1 ^= (key.charCodeAt(i) & 0xff);

            k1 = (((k1 & 0xffff) * c1) + ((((k1 >>> 16) * c1) & 0xffff) << 16)) & 0xffffffff;
            k1 = (k1 << 15) | (k1 >>> 17);
            k1 = (((k1 & 0xffff) * c2) + ((((k1 >>> 16) * c2) & 0xffff) << 16)) & 0xffffffff;
            h1 ^= k1;
    }

    h1 ^= key.length;

    h1 ^= h1 >>> 16;
    h1 = (((h1 & 0xffff) * 0x85ebca6b) + ((((h1 >>> 16) * 0x85ebca6b) & 0xffff) << 16)) & 0xffffffff;
    h1 ^= h1 >>> 13;
    h1 = ((((h1 & 0xffff) * 0xc2b2ae35) + ((((h1 >>> 16) * 0xc2b2ae35) & 0xffff) << 16))) & 0xffffffff;
    h1 ^= h1 >>> 16;

    return h1 >>> 0;
}

function getEncryptionDeviceNumber(){
	try {
		var deviceFeatures = new DeviceFeatures();
		var deviceNumber   = deviceFeatures.get();
		return  murmurhash3_32_gc(deviceNumber,31);
	}
	catch (err) {
        return "";
    }
}
