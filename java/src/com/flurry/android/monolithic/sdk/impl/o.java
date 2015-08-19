// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ac, ci, m, ja, 
//            cp, je, bw, cq, 
//            v, j, i, bh, 
//            ia, bi, p, ab, 
//            u, t, n, cf, 
//            jc, an, w, aa, 
//            cj

public class o extends ac
    implements android.content.DialogInterface.OnKeyListener, android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener, ci
{

    private AlertDialog A;
    private List B;
    private boolean C;
    private Map D;
    private Map E;
    private FlurryAdModule F;
    private ExecutorService G;
    private List H;
    String a;
    private final String f = getClass().getSimpleName();
    private final String g = "mraid.js";
    private ProgressDialog h;
    private cf i;
    private n j;
    private boolean k;
    private WebView l;
    private boolean m;
    private WebViewClient n;
    private WebChromeClient o;
    private View p;
    private int q;
    private android.webkit.WebChromeClient.CustomViewCallback r;
    private Dialog s;
    private FrameLayout t;
    private int u;
    private Dialog v;
    private FrameLayout w;
    private boolean x;
    private boolean y;
    private boolean z;

    public o(Context context, FlurryAdModule flurryadmodule, m m1, AdUnit adunit, int i1)
    {
        boolean flag = true;
        super(context, flurryadmodule, m1);
        a = null;
        setClickable(true);
        d = adunit;
        e = i1;
        c = m1;
        G = Executors.newSingleThreadExecutor();
        if (d != null)
        {
            B = d.d();
            if (d.e().intValue() != 1)
            {
                flag = false;
            }
            C = flag;
            if (C)
            {
                E = new HashMap();
                D = new HashMap();
                E.put(m1.b(), m1);
                D.put(((AdFrame)adunit.d().get(0)).g().toString(), adunit);
            }
            F = flurryadmodule;
            setAdUnit(d);
            setAdLog(c);
            H = new LinkedList();
            return;
        } else
        {
            ja.a(3, f, "adunit is Null");
            return;
        }
    }

    static int a(o o1, int i1)
    {
        o1.q = i1;
        return i1;
    }

    static Dialog a(o o1, Dialog dialog)
    {
        o1.s = dialog;
        return dialog;
    }

    static View a(o o1, View view)
    {
        o1.p = view;
        return view;
    }

    static android.webkit.WebChromeClient.CustomViewCallback a(o o1, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        o1.r = customviewcallback;
        return customviewcallback;
    }

    static FrameLayout a(o o1, FrameLayout framelayout)
    {
        o1.t = framelayout;
        return framelayout;
    }

    static AdUnit a(o o1, String s1)
    {
        return o1.c(s1);
    }

    static String a(o o1)
    {
        return o1.f;
    }

    private String a(List list, String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("'{\"adComponents\":[");
        s1 = l.getUrl();
        String s2 = cp.a(s1);
        String s3 = cp.a(s2, s1);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            s1 = ((AdFrame)((AdUnit)iterator.next()).d().get(0)).d().toString();
            list = s1;
            if (!TextUtils.isEmpty(s1))
            {
                list = s1;
                if (!TextUtils.isEmpty(s3))
                {
                    list = s1;
                    if (s3 != s2)
                    {
                        list = s1.replace(s2, s3);
                    }
                }
            }
            stringbuilder.append(je.e(list));
            if (iterator.hasNext())
            {
                stringbuilder.append(",");
            }
        } while (true);
        stringbuilder.append("]}'");
        return stringbuilder.toString();
    }

    private List a(String s1, int i1, int j1)
    {
        s1 = F.b().a(d.b().toString(), i1, j1);
        Iterator iterator = s1.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            AdUnit adunit = (AdUnit)iterator.next();
            if (adunit.d().size() > 0)
            {
                D.put(((AdFrame)adunit.d().get(0)).g().toString(), adunit);
            }
        } while (true);
        return s1;
    }

    private void a(int i1, int j1)
    {
        if (!(getContext() instanceof Activity))
        {
            ja.a(3, f, "no activity present");
        } else
        {
            Activity activity = (Activity)getContext();
            if (v == null)
            {
                ja.a(3, f, (new StringBuilder()).append("expand(").append(i1).append(",").append(j1).append(")").toString());
                if (l != null && -1 != indexOfChild(l))
                {
                    removeView(l);
                }
                u = activity.getRequestedOrientation();
                if (w == null)
                {
                    w = new FrameLayout(activity);
                    w.setBackgroundColor(0xff000000);
                    if (l != null && l.getParent() == null)
                    {
                        w.addView(l, new android.widget.FrameLayout.LayoutParams(-1, -1, 17));
                    }
                }
                if (v == null)
                {
                    v = new Dialog(activity, 0x103000a);
                    cq.a(v.getWindow());
                    v.setContentView(w, new android.view.ViewGroup.LayoutParams(-1, -1));
                    v.setOnDismissListener(new v(this));
                    v.setCancelable(true);
                    v.show();
                }
                com.flurry.android.monolithic.sdk.impl.j.a(activity, com.flurry.android.monolithic.sdk.impl.j.a(), true);
                b.a(activity, d.b().toString());
                return;
            }
        }
    }

    private void a(i i1)
    {
        if (H.contains(i1.c.a) && l != null)
        {
            l.loadUrl((new StringBuilder()).append("javascript:flurryadapter.callComplete('").append(i1.c.a).append("');").toString());
            H.remove(i1.c.a);
        }
    }

    private void a(i i1, int j1)
    {
        if (C) goto _L2; else goto _L1
_L1:
        if (j1 == e || j1 >= B.size()) goto _L4; else goto _L3
_L3:
        Object obj;
        obj = (AdFrame)d.d().get(j1);
        i1 = getCurrentFormat();
        obj = ((AdFrame) (obj)).e().e().toString();
        if (((String) (obj)).equals(i1)) goto _L6; else goto _L5
_L5:
        if (((String) (obj)).equals("takeover"))
        {
            F.b(c);
            F.a(d);
            i1 = new Intent(ia.a().b(), com/flurry/android/FlurryFullscreenTakeoverActivity);
            i1.putExtra("frameIndex", j1);
            F.a().a(getContext(), i1, d.b().toString());
        }
_L4:
        return;
_L6:
        e = j1;
        initLayout();
        return;
_L2:
        String s1 = (String)i1.c.b.get("guid");
        if (s1 != null)
        {
            d = c(s1);
            B = d.d();
            c = i1.c.e;
            if (d())
            {
                F.a(d);
                F.b(c);
            }
            e = j1;
            C = false;
            initLayout();
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    private void a(String s1)
    {
        s1 = new p(this, s1);
        G.submit(s1);
    }

    static boolean a(o o1, boolean flag)
    {
        o1.y = flag;
        return flag;
    }

    static WebView b(o o1)
    {
        return o1.l;
    }

    static m b(o o1, String s1)
    {
        return o1.b(s1);
    }

    private m b(String s1)
    {
        m m1;
        if (E == null)
        {
            m1 = null;
        } else
        {
            m m3 = (m)E.get(s1);
            m1 = m3;
            if (m3 == null)
            {
                m m2 = ab.a(F, s1);
                E.put(s1, m2);
                return m2;
            }
        }
        return m1;
    }

    private void b(int i1, int j1)
    {
        if (!(getContext() instanceof Activity))
        {
            ja.a(3, f, "no activity present");
        } else
        {
            Activity activity = (Activity)getContext();
            if (v != null)
            {
                ja.a(3, f, (new StringBuilder()).append("collapse(").append(i1).append(",").append(j1).append(")").toString());
                if (v != null && v.isShowing())
                {
                    v.hide();
                    v.setOnDismissListener(null);
                    v.dismiss();
                }
                v = null;
                com.flurry.android.monolithic.sdk.impl.j.a(activity, u);
                if (w != null)
                {
                    if (l != null && -1 != w.indexOfChild(l))
                    {
                        w.removeView(l);
                    }
                    w = null;
                }
                if (l != null && l.getParent() == null)
                {
                    addView(l);
                }
                b.b(activity, d.b().toString());
                return;
            }
        }
    }

    static boolean b(o o1, boolean flag)
    {
        o1.x = flag;
        return flag;
    }

    private AdUnit c(String s1)
    {
        if (D == null)
        {
            return null;
        } else
        {
            return (AdUnit)D.get(s1);
        }
    }

    static void c(o o1)
    {
        o1.g();
    }

    static boolean d(o o1)
    {
        return o1.y;
    }

    static void e(o o1)
    {
        o1.l();
    }

    private boolean f()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = m;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean f(o o1)
    {
        return o1.x;
    }

    private void g()
    {
        this;
        JVM INSTR monitorenter ;
        if (!f())
        {
            i();
            setFlurryJsEnvInitialized(true);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void g(o o1)
    {
        o1.o();
    }

    private void h()
    {
        this;
        JVM INSTR monitorenter ;
        setFlurryJsEnvInitialized(false);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void h(o o1)
    {
        o1.p();
    }

    private void i()
    {
        ja.a(3, f, "initializeFlurryJsEnv");
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("javascript:(function() {");
        stringbuilder.append("var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial)return\"\";if(this.c&&typeof partial==\"string\")partial=this.c.compile(partial,this.options);return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0)return false;if(typeof val==\"function\")val=this.ls(val,ctx,partials,inverted,start,end,tags);pass=val===\"\"||!!val;if(!inverted&&pass&&ctx)ctx.push(typeof val==\"object\"?val:ctx[ctx.length-1]);return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2]))return ctx[ctx.length-1];for(var i=1;i<names.length;i++)if(val&&typeof val==\"object\"&&names[i]in val){cx=val;val=val[names[i]]}else val=\"\";if(returnFound&&!val)return false;if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found)return returnFound?false:\"\";if(!returnFound&&typeof val==\"function\")val=this.lv(val,ctx,partials);return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var t=val.call(cx,text,function(t){return compiler.compile(t,options).render(cx,partials)});this.b(compiler.compile(t.toString(),options).render(cx,partials));return false},b:useArrayBuffer?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:useArrayBuffer?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0)return this.ho(val,cx,partials,this.text.substring(start,end),tags);t=val.call(cx);if(typeof t==\"function\")if(inverted)return true;else if(this.c)return this.ho(t,cx,partials,this.text.substring(start,end),tags);return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\")result=result.call(cx);result=coerceToString(result);if(this.c&&~result.indexOf(\"{{\"))return this.c.compile(result,this.options).render(cx,partials);return result}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String(val===null||val===undefined?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,\"_v\":8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes[\"_v\"]||!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null;if(!isAllWhitespace)return false}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace())for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\")next.indent=tokens[j].toString();tokens.splice(j,1)}}else if(!noNewLine)tokens.push({tag:\"\\n\"});seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++)if(state==IN_TEXT)if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else if(text.charAt(i)==\"\\n\")filterLine(seenTag);else buf+=text.charAt(i);else if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag)i++;state=IN_TAG}seenTag=i}else if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:tagType==\"/\"?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\")if(ctag==\"}}\")i++;else cleanTripleStache(tokens[tokens.length-1])}else buf+=text.charAt(i);filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\")token.n=token.n.substring(0,token.n.length-1)}function trim(s){if(s.trim)return s.trim();return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0))return false;for(var i=1,l=tag.length;i<l;i++)if(text.charAt(index+i)!=tag.charAt(i))return false;return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else if(token.tag==\"/\"){if(stack.length===0)throw new Error(\"Closing tag without opener: /\"+token.n);opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags))throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n);opener.end=token.i;return instructions}else instructions.push(token)}if(stack.length>0)throw new Error(\"missing closing tag: \"+stack.pop().n);return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].o==token.n){token.tag=\"#\";return true}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].c==close&&tags[i].o==open)return true}function writeCode(tree){return'var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\"}Hogan.generate=function(code,text,options){if(options.asString)return\"function(c,p,i){\"+code+\";}\";return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return~s.indexOf(\".\")?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\")code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag);else if(tag==\"^\")code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n));else if(tag==\"<\"||tag==\">\")code+=partial(tree[i]);else if(tag==\"{\"||tag==\"&\")code+=tripleStache(tree[i].n,chooseMethod(tree[i].n));else if(tag==\"\\n\")code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"));else if(tag==\"_v\")code+=variable(tree[i].n,chooseMethod(tree[i].n));else if(tag===undefined)code+=text('\"'+esc(tree[i])+'\"')}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),'+\"c,p,0,\"+start+\",\"+end+',\"'+tags+'\")){'+\"_.rs(c,p,\"+\"function(c,p,_){\"+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t)return t;t=this.generate(writeCode(this.parse(this.scan(text,options.delimiters),text,options)),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);");
        stringbuilder.append("var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};");
        stringbuilder.append("window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);");
        stringbuilder.append("window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();}");
        stringbuilder.append("})();");
        if (l != null)
        {
            l.loadUrl(stringbuilder.toString());
        }
    }

    static void i(o o1)
    {
        o1.h();
    }

    private void j()
    {
        ja.a(3, f, "activateFlurryJsEnv");
        Object obj = getCurrentContent();
        if (!C && obj != null && ((String) (obj)).length() > 0 && !((String) (obj)).equals("{}"))
        {
            String s1 = l.getUrl();
            String s2 = cp.a(s1);
            String s3 = cp.a(s2, s1);
            s1 = ((String) (obj));
            if (!TextUtils.isEmpty(s3))
            {
                s1 = ((String) (obj));
                if (s3 != s2)
                {
                    ja.a(3, f, (new StringBuilder()).append("content before {{mustached}} tags replacement = '").append(((String) (obj))).append("'").toString());
                    s1 = ((String) (obj)).replace(s2, s3);
                    ja.a(3, f, (new StringBuilder()).append("content after {{mustached}} tags replacement = '").append(s1).append("'").toString());
                }
            }
            obj = new StringBuilder();
            ((StringBuilder) (obj)).append("javascript:");
            ((StringBuilder) (obj)).append("(function(){");
            ((StringBuilder) (obj)).append("if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial)return\"\";if(this.c&&typeof partial==\"string\")partial=this.c.compile(partial,this.options);return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0)return false;if(typeof val==\"function\")val=this.ls(val,ctx,partials,inverted,start,end,tags);pass=val===\"\"||!!val;if(!inverted&&pass&&ctx)ctx.push(typeof val==\"object\"?val:ctx[ctx.length-1]);return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2]))return ctx[ctx.length-1];for(var i=1;i<names.length;i++)if(val&&typeof val==\"object\"&&names[i]in val){cx=val;val=val[names[i]]}else val=\"\";if(returnFound&&!val)return false;if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found)return returnFound?false:\"\";if(!returnFound&&typeof val==\"function\")val=this.lv(val,ctx,partials);return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var t=val.call(cx,text,function(t){return compiler.compile(t,options).render(cx,partials)});this.b(compiler.compile(t.toString(),options).render(cx,partials));return false},b:useArrayBuffer?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:useArrayBuffer?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0)return this.ho(val,cx,partials,this.text.substring(start,end),tags);t=val.call(cx);if(typeof t==\"function\")if(inverted)return true;else if(this.c)return this.ho(t,cx,partials,this.text.substring(start,end),tags);return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\")result=result.call(cx);result=coerceToString(result);if(this.c&&~result.indexOf(\"{{\"))return this.c.compile(result,this.options).render(cx,partials);return result}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String(val===null||val===undefined?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,\"_v\":8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes[\"_v\"]||!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null;if(!isAllWhitespace)return false}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace())for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\")next.indent=tokens[j].toString();tokens.splice(j,1)}}else if(!noNewLine)tokens.push({tag:\"\\n\"});seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++)if(state==IN_TEXT)if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else if(text.charAt(i)==\"\\n\")filterLine(seenTag);else buf+=text.charAt(i);else if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag)i++;state=IN_TAG}seenTag=i}else if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:tagType==\"/\"?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\")if(ctag==\"}}\")i++;else cleanTripleStache(tokens[tokens.length-1])}else buf+=text.charAt(i);filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\")token.n=token.n.substring(0,token.n.length-1)}function trim(s){if(s.trim)return s.trim();return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0))return false;for(var i=1,l=tag.length;i<l;i++)if(text.charAt(index+i)!=tag.charAt(i))return false;return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else if(token.tag==\"/\"){if(stack.length===0)throw new Error(\"Closing tag without opener: /\"+token.n);opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags))throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n);opener.end=token.i;return instructions}else instructions.push(token)}if(stack.length>0)throw new Error(\"missing closing tag: \"+stack.pop().n);return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].o==token.n){token.tag=\"#\";return true}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].c==close&&tags[i].o==open)return true}function writeCode(tree){return'var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\"}Hogan.generate=function(code,text,options){if(options.asString)return\"function(c,p,i){\"+code+\";}\";return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return~s.indexOf(\".\")?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\")code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag);else if(tag==\"^\")code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n));else if(tag==\"<\"||tag==\">\")code+=partial(tree[i]);else if(tag==\"{\"||tag==\"&\")code+=tripleStache(tree[i].n,chooseMethod(tree[i].n));else if(tag==\"\\n\")code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"));else if(tag==\"_v\")code+=variable(tree[i].n,chooseMethod(tree[i].n));else if(tag===undefined)code+=text('\"'+esc(tree[i])+'\"')}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),'+\"c,p,0,\"+start+\",\"+end+',\"'+tags+'\")){'+\"_.rs(c,p,\"+\"function(c,p,_){\"+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t)return t;t=this.generate(writeCode(this.parse(this.scan(text,options.delimiters),text,options)),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}");
            ((StringBuilder) (obj)).append("if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}");
            ((StringBuilder) (obj)).append("if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();} }");
            s1 = je.e(s1);
            ((StringBuilder) (obj)).append("var content='");
            ((StringBuilder) (obj)).append(s1);
            ((StringBuilder) (obj)).append("';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;");
            ((StringBuilder) (obj)).append("})();");
            if (l != null)
            {
                l.loadUrl(((StringBuilder) (obj)).toString());
            }
        }
    }

    static void j(o o1)
    {
        o1.m();
    }

    static void k(o o1)
    {
        o1.j();
    }

    private boolean k()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = z;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    static ProgressDialog l(o o1)
    {
        return o1.h;
    }

    private void l()
    {
        this;
        JVM INSTR monitorenter ;
        if (!k())
        {
            n();
            setMraidJsEnvInitialized(true);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static List m(o o1)
    {
        return o1.H;
    }

    private void m()
    {
        this;
        JVM INSTR monitorenter ;
        setMraidJsEnvInitialized(false);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static View n(o o1)
    {
        return o1.p;
    }

    private void n()
    {
        ja.a(3, f, "initializeMraid");
        String s1;
        StringBuilder stringbuilder;
        if (d())
        {
            s1 = "interstitial";
        } else
        {
            s1 = "inline";
        }
        s1 = (new StringBuilder()).append("{useCustomClose:").append(false).append(",isModal:").append(false).append(",width:undefined,height:undefined,placementType:\"").append(s1).append("\"}").toString();
        stringbuilder = new StringBuilder();
        stringbuilder.append("javascript:(function() {");
        stringbuilder.append("var mraidCtor=function(flurryBridge,initState){var mraid={};var STATES=mraid.STATES={LOADING:\"loading\",UNKNOWN:\"unknown\",DEFAULT:\"default\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var EVENTS=mraid.EVENTS={ASSETREADY:\"assetReady\",ASSETREMOVED:\"assetRemoved\",ASSETRETIRED:\"assetRetired\",INFO:\"info\",ERROR:\"error\",ORIENTATIONCHANGE:\"orientationChange\",READY:\"ready\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\"};var listeners={};var currentState=STATES.LOADING;var expandProperties={width:initState.width,height:initState.height,isModal:initState.isModal,useCustomClose:false};var collapseProperties={};var placementType=initState.placementType;var disable=false;var closeId=\"flurry-mraid-default-close\";var imgUrl=\"http://flurry.cachefly.net/adSpaceStyles/images/bttn-close-bw.png\";var safeClose=function(){try{if(window.mraid)window.mraid.close();else if(window.flurryadapter)flurryadapter.executeCall(\"adWillClose\");else console.log(\"unable to close\")}catch(error){console.log(\"unable to close: \"+error)}};var makeDefaultClose=function(){var img=document.createElement(\"img\");img.src=imgUrl;img.id=closeId;img.style.position=\"absolute\";img.style.top=\"10px\";img.style.right=\"10px\";img.style.width=\"50px\";img.style.height=\"50px\";img.style.zIndex=1E4;return img};var updateDefaultClose=function(){if(!expandProperties.useCustomClose&&(placementType===\"interstitial\"||currentState===STATES.EXPANDED))addDefaultClose();else removeDefaultClose()};var addDefaultClose=function(){var closeButton=document.getElementById(closeId);if(!closeButton){closeButton=makeDefaultClose();document.body.appendChild(closeButton)}};var removeDefaultClose=function(){var closeButton=document.getElementById(closeId);if(closeButton)document.body.removeChild(closeButton)};var setupDefaultCloseHandler=function(){document.body.addEventListener(\"click\",function(e){e=e||window.event;var target=e.target||e.srcElement;if(target.id===closeId)safeClose()})};var contains=function(value,obj){for(var i in obj)if(obj[i]===value)return true;return false};var stringify=function(obj){if(typeof obj==\"object\")if(obj.push){var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(obj[p]);return\"[\"+out.join(\",\")+\"]\"}else{var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(\"'\"+p+\"':\"+obj[p]);return\"{\"+out.join(\",\")+\"}\"}else return new String(obj)};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++)args[i]=arguments[i];var event=args.shift();try{if(listeners[event])for(var j=0;j<listeners[event].length;j++)if(typeof listeners[event][j]===\"function\")listeners[event][j].apply(undefined,args);else if(typeof listeners[event][j]===\"string\"&&typeof window[listeners[event][j]]===\"function\")window[listeners[event][j]].apply(undefined,args)}catch(e){console.log(e)}};mraid.disable=function(){removeDefaultClose();disable=true};mraid.addEventListener=function(event,listener){if(disable)return;if(!event||!listener)broadcastEvent(EVENTS.ERROR,\"Both event and listener are required.\",\"addEventListener\");else if(!contains(event,EVENTS))broadcastEvent(EVENTS.ERROR,\"Unknown event: \"+event,\"addEventListener\");else if(!listeners[event])listeners[event]=[listener];else listeners[event].push(listener);flurryBridge.executeCall(\"eventListenerAdded\")};mraid.stateChange=function(newState){if(disable)return;if(currentState===newState)return;broadcastEvent(EVENTS.INFO,\"setting state to \"+stringify(newState));var oldState=currentState;currentState=newState;if(oldState===STATES.LOADING&&newState===STATES.DEFAULT){setupDefaultCloseHandler();updateDefaultClose();broadcastEvent(EVENTS.READY)}else if(oldState===STATES.HIDDEN||newState===STATES.HIDDEN)broadcastEvent(EVENTS.VIEWABLECHANGE);else if(oldState===STATES.DEFAULT&&newState===STATES.EXPANDED)updateDefaultClose();else if(newState===STATES.DEFAULT&&oldState===STATES.EXPANDED)updateDefaultClose();broadcastEvent(EVENTS.STATECHANGE,currentState)};mraid.close=function(){if(disable)return;var state=mraid.getState();if(state===STATES.DEFAULT){mraid.stateChange(STATES.HIDDEN);flurryBridge.executeCall(\"adWillClose\")}else if(state===STATES.EXPANDED){mraid.stateChange(STATES.DEFAULT);flurryBridge.executeCall(\"collapse\")}else console.log(\"close() called in state \"+state)};mraid.expand=function(url){if(disable)return;var state=mraid.getState();if(state!==STATES.DEFAULT){console.log(\"expand() called in state \"+state);return}if(placementType===\"interstitial\"){console.log(\"expand() called for placement type \"+placementType);return}if(url)flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height,\"url\",url);else flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height);mraid.stateChange(STATES.EXPANDED)};mraid.setExpandProperties=function(properties){if(disable)return;if(typeof properties.width===\"number\"&&!isNaN(properties.width))expandProperties.width=properties.width;if(typeof properties.height===\"number\"&&!isNaN(properties.height))expandProperties.height=properties.height;if(typeof properties.useCustomClose===\"boolean\"){expandProperties.useCustomClose=properties.useCustomClose;updateDefaultClose()}};mraid.getExpandProperties=function(properties){if(disable)return;var ret={};ret.width=expandProperties.width;ret.height=expandProperties.height;ret.isModal=expandProperties.isModal;ret.useCustomClose=expandProperties.useCustomClose;return ret};mraid.getPlacementType=function(){return placementType};mraid.getVersion=function(){if(disable)return\"\";return\"1.0\"};mraid.getState=function(){if(disable)return\"\";return currentState};mraid.isViewable=function(){if(disable)return false;if(mraid.getState()===\"hidden\")return false;else return true};mraid.open=function(url){if(disable)return;try{flurryBridge.executeCall(\"open\",\"url\",url)}catch(e){console.log(e)}};mraid.removeEventListener=function(event,listener){if(disable)return;if(!event)broadcastEvent(\"error\",\"Must specify an event.\",\"removeEventListener\");else if(listener&&listeners[event])for(var i=0;i<listeners[event].length;i++){if(listeners[event][i]===listener)listeners[event].splice(i,1)}else if(listeners[event])listeners[event]=[]};mraid.useCustomClose=function(use){if(disable)return;if(typeof use===\"boolean\"){expandProperties.useCustomClose=use;updateDefaultClose()}};return mraid};");
        stringbuilder.append((new StringBuilder()).append("window.mraid=mraidCtor(window.flurryadapter,").append(s1).append(");").toString());
        stringbuilder.append("})();");
        if (l != null)
        {
            l.loadUrl(stringbuilder.toString());
        }
    }

    static WebChromeClient o(o o1)
    {
        return o1.o;
    }

    private void o()
    {
        ja.a(3, f, "activateMraid");
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("javascript:");
        stringbuilder.append("if(window.mraid){window.mraid.stateChange(window.mraid.STATES.DEFAULT);}");
        if (l != null)
        {
            l.loadUrl(stringbuilder.toString());
        }
    }

    static FrameLayout p(o o1)
    {
        return o1.t;
    }

    private void p()
    {
        if (!(getContext() instanceof Activity))
        {
            ja.a(3, f, "no activity present");
        } else
        {
            Activity activity = (Activity)getContext();
            if (d())
            {
                com.flurry.android.monolithic.sdk.impl.j.a(activity, com.flurry.android.monolithic.sdk.impl.j.a(), true);
                return;
            }
        }
    }

    static Dialog q(o o1)
    {
        return o1.s;
    }

    private boolean q()
    {
        return s != null;
    }

    static Dialog r(o o1)
    {
        return o1.v;
    }

    private void r()
    {
label0:
        {
            ja.a(3, f, "closing ad");
            if (d())
            {
                if (getContext() instanceof Activity)
                {
                    break label0;
                }
                ja.a(3, f, "no activity present");
            }
            return;
        }
        ((Activity)getContext()).finish();
    }

    static int s(o o1)
    {
        return o1.q;
    }

    private boolean s()
    {
        return v != null;
    }

    private void setFlurryJsEnvInitialized(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        m = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void setMraidJsEnvInitialized(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        z = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static android.webkit.WebChromeClient.CustomViewCallback t(o o1)
    {
        return o1.r;
    }

    static n u(o o1)
    {
        return o1.j;
    }

    public void a()
    {
        a("adWillClose", Collections.emptyMap(), d, c, e, 0);
    }

    public void a(i i1, cj cj, int j1)
    {
        Object obj;
        Object obj1;
        bh bh1;
        obj = i1.a;
        bh1 = i1.c;
        obj1 = i1.b;
        if (j1 <= 10) goto _L2; else goto _L1
_L1:
        ja.a(5, f, (new StringBuilder()).append("Maximum depth for event/action loop exceeded when performing action:").append(((String) (obj))).append(",").append(obj1).append(",triggered by:").append(bh1.a).toString());
_L6:
        return;
_L2:
        int k1;
        if (bh1.a.equals("clicked"))
        {
            String s1 = (String)bh1.b.get("noop");
            if (s1 != null && s1.equals("true"))
            {
                ja.a(4, f, "'clicked' event is a noop");
                return;
            }
        }
        ja.a(3, f, (new StringBuilder()).append("performAction(action=").append(((String) (obj))).append(",params=").append(i1.b).append(",triggering event=").append(bh1.a).append(")").toString());
        if (!((String) (obj)).equals("nextFrame"))
        {
            break MISSING_BLOCK_LABEL_324;
        }
        k1 = e;
        cj = (String)((Map) (obj1)).get("offset");
        if (cj == null) goto _L4; else goto _L3
_L3:
        if (!cj.equals("next"))
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = e + 1;
_L7:
        a(i1, j1);
_L8:
        a(i1);
        return;
        if (cj.equals("current")) goto _L6; else goto _L5
_L5:
        j1 = Integer.parseInt(cj);
          goto _L7
        cj;
        ja.a(6, f, (new StringBuilder()).append("caught: ").append(cj.getMessage()).toString());
_L4:
        j1 = k1 + 1;
          goto _L7
        if (((String) (obj)).equals("closeAd"))
        {
            r();
        } else
        if (((String) (obj)).equals("notifyUser"))
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getContext());
            if (((Map) (obj1)).containsKey("message") && ((Map) (obj1)).containsKey("confirmDisplay") && ((Map) (obj1)).containsKey("cancelDisplay"))
            {
                cj = (String)((Map) (obj1)).get("message");
                obj = (String)((Map) (obj1)).get("confirmDisplay");
                obj1 = (String)((Map) (obj1)).get("cancelDisplay");
            } else
            {
                cj = "Are you sure?";
                obj = "Cancel";
                obj1 = "OK";
            }
            builder.setMessage(cj).setCancelable(false).setPositiveButton(((CharSequence) (obj1)), new u(this, bh1, j1)).setNegativeButton(((CharSequence) (obj)), new t(this, bh1, j1));
            A = builder.create();
            if (j != null && getCurrentBinding() == 3)
            {
                j.pause();
            }
            A.show();
        } else
        if (((String) (obj)).equals("loadAdComponents"))
        {
            boolean flag = true;
            byte byte0 = 3;
            j1 = byte0;
            int l1 = ((flag) ? 1 : 0);
            if (((Map) (obj1)).containsKey("min"))
            {
                j1 = byte0;
                l1 = ((flag) ? 1 : 0);
                if (((Map) (obj1)).containsKey("max"))
                {
                    try
                    {
                        l1 = Integer.parseInt((String)((Map) (obj1)).get("min"));
                        j1 = Integer.parseInt((String)((Map) (obj1)).get("max"));
                    }
                    // Misplaced declaration of an exception variable
                    catch (cj cj)
                    {
                        l1 = 1;
                        j1 = 3;
                    }
                }
            }
            cj = a(d.b().toString(), l1, j1);
            if (cj.size() > 0)
            {
                obj = a(((List) (cj)), d.b().toString());
                if (l != null)
                {
                    l.loadUrl((new StringBuilder()).append("javascript:(function() {var multiadwraps=document.getElementsByClassName('multiAdWrap');if(multiadwraps.length>0){var template=document.getElementsByClassName('multiAdWrap')[0];var compiled=Hogan.compile(template.innerHTML);template.innerHTML='';template.innerHTML=compiled.render(JSON.parse(").append(((String) (obj))).append("));}})();").toString());
                    l.loadUrl("javascript:flurryadapter.callComplete();");
                }
                for (cj = cj.iterator(); cj.hasNext(); a("rendered", ((Map) (obj1)), ((AdUnit) (obj)), b(((AdFrame)((AdUnit) (obj)).d().get(0)).g().toString()), 0, 0))
                {
                    obj = (AdUnit)cj.next();
                    obj1 = new HashMap();
                    ((Map) (obj1)).put("guid", ((AdFrame)((AdUnit) (obj)).d().get(0)).g().toString());
                }

                if (l != null && !a(((View) (l))))
                {
                    addView(l);
                }
            } else
            {
                a("renderFailed", Collections.emptyMap(), d, c, e, 0);
            }
        } else
        if (((String) (obj)).equals("doExpand"))
        {
            int i2 = je.b();
            j1 = je.c();
            if (i1.c.b.containsKey("width") && i1.c.b.containsKey("height"))
            {
                try
                {
                    i2 = je.b(Integer.parseInt((String)i1.c.b.get("width")));
                    j1 = je.b(Integer.parseInt((String)i1.c.b.get("height")));
                }
                // Misplaced declaration of an exception variable
                catch (cj cj)
                {
                    ja.a(6, f, cj.getMessage());
                    i2 = je.b();
                    j1 = je.c();
                }
            }
            ja.a(3, f, (new StringBuilder()).append("expand to width = ").append(i2).append(" height = ").append(j1).toString());
            if (getHolder() != null)
            {
                a("clicked", Collections.emptyMap(), d, c, e, 0);
                a(i2, j1);
            }
            if (i1.c.b.containsKey("url"))
            {
                a = (String)i1.c.b.get("url");
                initLayout();
            }
        } else
        if (((String) (obj)).equals("doCollapse"))
        {
            int j2 = getCurrentAdFrame().e().b().intValue();
            j1 = getCurrentAdFrame().e().c().intValue();
            j2 = je.b(j2);
            j1 = je.b(j1);
            if (a != null)
            {
                a = null;
                initLayout();
            }
            if (getHolder() != null)
            {
                b(j2, j1);
            }
        } else
        {
            if (((String) (obj)).equals("directOpen"))
            {
                HashMap hashmap = new HashMap();
                hashmap.put("noop", "true");
                a("clicked", ((Map) (hashmap)), d, c, e, 0);
            }
            b.a().a(i1, cj, j1);
        }
          goto _L8
    }

    public void a(String s1, Map map, AdUnit adunit, m m1, int i1, int j1)
    {
        ja.a(3, f, (new StringBuilder()).append("fireEvent(event=").append(s1).append(",params=").append(map).append(")").toString());
        b.a(new bh(s1, map, getContext(), adunit, m1, i1), this, j1);
    }

    boolean a(View view)
    {
        view = view.getParent();
        return view != null && view == this;
    }

    public void b()
    {
        k = true;
        if (l != null && android.os.Build.VERSION.SDK_INT >= 11)
        {
            l.onResume();
        }
        if (j != null && getCurrentBinding() == 3 && i != null)
        {
            i.show(0);
        }
    }

    public void c()
    {
        if (l != null && android.os.Build.VERSION.SDK_INT >= 11)
        {
            l.onPause();
        }
        if (j != null && getCurrentBinding() == 3)
        {
            j.pause();
        }
        k = false;
    }

    boolean d()
    {
        return getCurrentFormat().equals("takeover");
    }

    boolean e()
    {
        boolean flag = jc.a().c();
        if (!flag)
        {
            ja.a(5, f, "There is no network connectivity (ad will not rotate)");
        }
        return !s() && !q() && flag;
    }

    AdFrame getCurrentAdFrame()
    {
        return (AdFrame)B.get(e);
    }

    int getCurrentBinding()
    {
        return getCurrentAdFrame().b().intValue();
    }

    String getCurrentContent()
    {
        return getCurrentAdFrame().d().toString();
    }

    String getCurrentDisplay()
    {
        return getCurrentAdFrame().c().toString();
    }

    String getCurrentFormat()
    {
        return getCurrentAdFrame().e().e().toString();
    }

    an getHolder()
    {
        Object obj;
        try
        {
            obj = getParent();
        }
        catch (ClassCastException classcastexception)
        {
            ja.a(5, f, (new StringBuilder()).append("AdUnityView parent not a BannerHolder:").append(classcastexception.getMessage()).toString());
            return null;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        obj = (an)obj;
        return ((an) (obj));
        return null;
    }

    public void initLayout()
    {
        Context context;
        ja.a(3, f, (new StringBuilder()).append("initLayout: ad creative layout: {width = ").append(getCurrentAdFrame().e().b()).append(", height = ").append(getCurrentAdFrame().e().c()).append("}").toString());
        context = getContext();
        removeAllViews();
        setFocusable(true);
        setFocusableInTouchMode(true);
        getCurrentBinding();
        JVM INSTR tableswitch 1 3: default 112
    //                   1 351
    //                   2 351
    //                   3 136;
           goto _L1 _L2 _L2 _L3
_L1:
        a("renderFailed", Collections.emptyMap(), d, c, e, 0);
_L5:
        return;
_L3:
        if (j == null)
        {
            j = new n(context);
            j.setOnPreparedListener(this);
            j.setOnCompletionListener(this);
            j.setOnErrorListener(this);
            i = new cf(context, j, this);
            j.setMediaController(i);
        }
        j.setVideoURI(Uri.parse(getCurrentDisplay()));
        ja.a(3, f, (new StringBuilder()).append("URI: ").append(Uri.parse(getCurrentDisplay()).toString()).toString());
        j.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        addView(j);
        ((RelativeLayout)j.getParent()).setGravity(17);
        h = new ProgressDialog(context);
        h.setProgressStyle(0);
        h.setMessage("Loading...");
        h.setCancelable(true);
        h.setOnKeyListener(this);
        h.show();
        return;
_L2:
        if (l == null)
        {
            l = new WebView(context);
            l.getSettings().setJavaScriptEnabled(true);
            l.setVerticalScrollBarEnabled(false);
            l.setHorizontalScrollBarEnabled(false);
            l.setBackgroundColor(0);
            l.clearCache(false);
            o = new w(this, null);
            l.setWebChromeClient(o);
            n = new aa(this, null);
            l.setWebViewClient(n);
        }
        if (getCurrentBinding() == 1)
        {
            if (a != null)
            {
                a(a);
            } else
            {
                a(getCurrentDisplay());
            }
        } else
        if (getCurrentBinding() == 2)
        {
            l.loadDataWithBaseURL("base://url/", getCurrentDisplay(), "text/html", "utf-8", "base://url/");
            a("rendered", Collections.emptyMap(), d, c, e, 0);
        }
        l.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        if (d())
        {
            h = new ProgressDialog(context);
            h.setProgressStyle(0);
            h.setMessage("Loading...");
            h.setCancelable(true);
            h.setOnKeyListener(this);
            h.show();
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        a("videoCompleted", Collections.emptyMap(), d, c, e, 0);
    }

    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
    {
        if (h != null && h.isShowing())
        {
            h.dismiss();
        }
        a("renderFailed", Collections.emptyMap(), d, c, e, 0);
        removeView(j);
        return false;
    }

    public boolean onKey(DialogInterface dialoginterface, int i1, KeyEvent keyevent)
    {
        ja.a(3, "listeners", (new StringBuilder()).append("onkey,keycode=").append(i1).append(",event=").append(keyevent.getAction()).toString());
        if (dialoginterface == h && i1 == 4 && keyevent.getAction() == 0)
        {
            a();
            dialoginterface.dismiss();
            return true;
        } else
        {
            return false;
        }
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        if (getCurrentBinding() == 3)
        {
            if (h.isShowing())
            {
                h.dismiss();
            }
            if ((A == null || !A.isShowing()) && j != null && k)
            {
                j.start();
            }
            a("rendered", Collections.emptyMap(), d, c, e, 0);
            a("videoStart", Collections.emptyMap(), d, c, e, 0);
        }
    }

    public void stop()
    {
        ja.a(3, f, "stop");
        if (getCurrentBinding() == 3)
        {
            if (h != null && h.isShowing())
            {
                h.dismiss();
            }
            if (j != null && j.isPlaying())
            {
                j.stopPlayback();
            }
        }
        if (l != null)
        {
            if (p != null && o != null)
            {
                o.onHideCustomView();
            }
            if (v != null)
            {
                b(0, 0);
            }
            removeView(l);
            l.stopLoading();
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                l.onPause();
            }
            l.destroy();
            l = null;
        }
        if (d())
        {
            a("adClosed", Collections.emptyMap(), d, c, e, 0);
        }
    }
}
