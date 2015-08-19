// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.Toast;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.net.UnknownHostException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ci, ck, ce, iz, 
//            ja, i, bh, bw, 
//            ad, je, ia, bk, 
//            an, bj, bl, cj, 
//            cd, bm, jc, m

public class bi
    implements ci
{

    private static final String d = com/flurry/android/monolithic/sdk/impl/bi.getSimpleName();
    private static int e = 0;
    FlurryAdModule a;
    ce b;
    ck c;
    private boolean f;

    public bi(FlurryAdModule flurryadmodule)
    {
        f = true;
        a = flurryadmodule;
        c = new ck(flurryadmodule);
        b = ce.a();
    }

    public static HttpResponse a(String s, int k, int l, boolean flag)
    {
        Object obj3 = null;
        Object obj;
        Object obj2;
        obj2 = new HttpGet(s);
        obj = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(((HttpParams) (obj)), k);
        HttpConnectionParams.setSoTimeout(((HttpParams) (obj)), l);
        ((HttpParams) (obj)).setParameter("http.protocol.handle-redirects", Boolean.valueOf(flag));
        obj = iz.b(((HttpParams) (obj)));
        Object obj1 = obj;
        obj2 = ((HttpClient) (obj)).execute(((org.apache.http.client.methods.HttpUriRequest) (obj2)));
        obj1 = obj2;
        s = ((String) (obj1));
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
            s = ((String) (obj1));
        }
_L2:
        return s;
        s;
        obj = null;
_L7:
        obj1 = obj;
        ja.a(d, (new StringBuilder()).append("Unknown host: ").append(s.getMessage()).toString());
        s = obj3;
        if (obj == null) goto _L2; else goto _L1
_L1:
        ((HttpClient) (obj)).getConnectionManager().shutdown();
        return null;
        Exception exception;
        exception;
        obj = null;
_L6:
        obj1 = obj;
        ja.a(d, (new StringBuilder()).append("Failed to hit URL: ").append(s).toString(), exception);
        s = obj3;
        if (obj == null) goto _L2; else goto _L3
_L3:
        ((HttpClient) (obj)).getConnectionManager().shutdown();
        return null;
        s;
        obj1 = null;
_L5:
        if (obj1 != null)
        {
            ((HttpClient) (obj1)).getConnectionManager().shutdown();
        }
        throw s;
        s;
        if (true) goto _L5; else goto _L4
_L4:
        exception;
          goto _L6
        s;
          goto _L7
    }

    static String d()
    {
        return d;
    }

    public int a(i k)
    {
        k = k.c.d.b().toString();
        return a.b().a().b(k);
    }

    Intent a(Intent intent, String s)
    {
        if (je.b(intent))
        {
            intent = new Intent(intent);
        } else
        {
            Intent intent1 = new Intent(ia.a().b(), com/flurry/android/FlurryFullscreenTakeoverActivity);
            intent1.putExtra("targetIntent", intent);
            intent = intent1;
        }
        if (intent != null)
        {
            intent.putExtra("adSpaceName", s);
        }
        return intent;
    }

    public String a(m m, AdUnit adunit, i k, String s)
    {
        Pattern pattern = Pattern.compile(".*?(%\\{\\w+\\}).*?");
        Matcher matcher = pattern.matcher(s);
        String s1 = s;
        for (s = matcher; s.matches(); s = pattern.matcher(s1))
        {
            s1 = c.a(m, adunit, k, s1, s.group(1));
        }

        return s1;
    }

    public void a()
    {
        f = e(((String) (null)));
    }

    void a(Context context, String s, AdUnit adunit)
    {
        Intent intent = ia.a().c().getLaunchIntentForPackage(s);
        if (intent != null && je.a(intent))
        {
            a(context, intent, adunit.b().toString());
            return;
        } else
        {
            a(context, (new StringBuilder()).append("https://play.google.com/store/apps/details?id=").append(s).toString(), false, adunit);
            return;
        }
    }

    public void a(Context context, String s, String s1)
    {
        if (s.startsWith("market://details?id="))
        {
            if (f)
            {
                if (!b(context, s, s1))
                {
                    ja.a(6, d, (new StringBuilder()).append("Cannot launch Google Play url ").append(s).toString());
                }
                return;
            } else
            {
                s = s.substring("market://details?id=".length());
                b(context, (new StringBuilder()).append("https://market.android.com/details?id=").append(s).toString(), s1);
                return;
            }
        } else
        {
            ja.a(5, d, (new StringBuilder()).append("Unexpected Google Play url scheme: ").append(s).toString());
            return;
        }
    }

    void a(Context context, String s, boolean flag, AdUnit adunit)
    {
        a.a(new bk(this, s, adunit, context, flag));
    }

    void a(i k, int l)
    {
        Context context;
        String s;
        boolean flag;
        boolean flag1;
        e = a(k);
        if (l > e)
        {
            ja.a(5, d, "Maximum depth for event/action loop exceeded when performing next AdUnit:");
            return;
        }
        context = k.c.c;
        AdUnit adunit = k.c.d;
        s = adunit.b().toString();
        flag = k.b.containsKey("delay");
        flag1 = a(adunit, k.c.f);
        if (!flag) goto _L2; else goto _L1
_L1:
        long l1 = Long.parseLong((String)k.b.get("delay"));
_L4:
        Object obj;
        obj = a.b().a(s);
        if (obj != null && flag && flag1)
        {
            ((an) (obj)).a(l1 * 1000L);
            return;
        }
        break; /* Loop/switch isn't completed */
        obj;
        ja.a(6, d, (new StringBuilder()).append("caught NumberFormatException with delay parameter in nextAdUnit:").append((String)k.b.get("delay")).toString());
_L2:
        l1 = 30L;
        if (true) goto _L4; else goto _L3
_L3:
        if (obj != null)
        {
            ((an) (obj)).post(new bj(this, context, s, ((an) (obj))));
            return;
        }
        if (k.c.a.equals("renderFailed"))
        {
            a.b().b(context, s);
            return;
        } else
        {
            k = a.b().g(s);
            a.a(context, k);
            return;
        }
    }

    public void a(i k, cj cj1, int l)
    {
        String s = null;
        if (k.c != null)
        {
            s = k.c.a;
        }
        ja.a(3, d, (new StringBuilder()).append("performAction:action=").append(k.a).append(",params=").append(k.b).append(",triggering event=").append(s).toString());
        String s1 = k.a;
        if (l > 10)
        {
            ja.a(5, d, (new StringBuilder()).append("Maximum depth for event/action loop exceeded when performing action:").append(s1).append(",").append(k.b).append(",triggered by:").append(s).toString());
            return;
        }
        if (s1.equals("directOpen"))
        {
            b(k);
            return;
        }
        if (s1.equals("delete"))
        {
            c(k);
            return;
        }
        if (s1.equals("processRedirect"))
        {
            d(k);
            return;
        }
        if (s1.equals("verifyUrl"))
        {
            b(k, cj1, l);
            return;
        }
        if (s1.equals("launchPackage"))
        {
            e(k);
            return;
        }
        if (s1.equals("sendUrlAsync"))
        {
            f(k);
            return;
        }
        if (s1.equals("sendAdLogs"))
        {
            g(k);
            return;
        }
        if (s1.equals("logEvent"))
        {
            h(k);
            return;
        }
        if (s1.equals("nextFrame"))
        {
            i(k);
            return;
        }
        if (s1.equals("nextAdUnit"))
        {
            a(k, l);
            return;
        }
        if (s1.equals("checkCap"))
        {
            c(k, cj1, l);
            return;
        }
        if (s1.equals("updateViewCount"))
        {
            j(k);
            return;
        } else
        {
            ja.a(5, d, (new StringBuilder()).append("Unknown action:").append(s1).append(",triggered by:").append(s).toString());
            return;
        }
    }

    public boolean a(Context context, Intent intent, String s)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (context != null)
        {
            flag = flag1;
            if (intent != null)
            {
                flag = flag1;
                if (s != null)
                {
                    flag = flag1;
                    if (je.a(intent))
                    {
                        intent = a(intent, s);
                        try
                        {
                            context.startActivity(intent);
                        }
                        // Misplaced declaration of an exception variable
                        catch (Context context)
                        {
                            ja.a(6, d, "Cannot launch Activity", context);
                            return false;
                        }
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    boolean a(AdUnit adunit, int k)
    {
        if (adunit != null && adunit.d().size() > 0)
        {
            return ((AdFrame)adunit.d().get(k)).e().e().toString().equals("banner");
        } else
        {
            return false;
        }
    }

    boolean a(String s)
    {
        s = ia.a().c().getLaunchIntentForPackage(s);
        return s != null && je.a(s);
    }

    boolean a(String s, String s1)
    {
        s1 = new Intent(s1);
        s1.setData(Uri.parse(s));
        return je.a(s1);
    }

    String b(String s)
    {
        int k = 0;
_L15:
        if (k >= 5) goto _L2; else goto _L1
_L1:
        if (!Uri.parse(s).getScheme().equals("http")) goto _L4; else goto _L3
_L3:
        if (!c() || b()) goto _L6; else goto _L5
_L5:
        String s1;
        HttpResponse httpresponse;
        httpresponse = a(s, 10000, 15000, false);
        s1 = s;
        if (httpresponse == null) goto _L8; else goto _L7
_L7:
        int l;
        l = httpresponse.getStatusLine().getStatusCode();
        if (ja.c() <= 3)
        {
            Toast.makeText(ia.a().b(), (new StringBuilder()).append("fFU HTTP Response Code: ").append(l).toString(), 0).show();
        }
        if (l != 200) goto _L10; else goto _L9
_L9:
        ja.a(3, d, (new StringBuilder()).append("Redirect URL found for: ").append(s).toString());
_L13:
        return s;
_L10:
        if (l < 300 || l >= 400) goto _L12; else goto _L11
_L11:
        ja.a(3, d, (new StringBuilder()).append("NumRedirects: ").append(k + 1).toString());
        s1 = s;
        if (httpresponse.containsHeader("Location"))
        {
            s1 = httpresponse.getFirstHeader("Location").getValue();
        }
_L8:
        k++;
        s = s1;
        continue; /* Loop/switch isn't completed */
_L12:
        ja.a(3, d, (new StringBuilder()).append("Bad Response status code: ").append(l).toString());
        return null;
_L6:
        Thread.sleep(100L);
        s1 = s;
        continue; /* Loop/switch isn't completed */
        InterruptedException interruptedexception;
        interruptedexception;
        ja.a(3, d, interruptedexception.getMessage());
        interruptedexception = s;
        if (true) goto _L8; else goto _L4
_L4:
        if (a(s, "android.intent.action.VIEW") || !TextUtils.isEmpty(s) && s.startsWith("market://")) goto _L13; else goto _L2
_L2:
        return null;
        if (true) goto _L15; else goto _L14
_L14:
    }

    void b(Context context, String s, boolean flag, AdUnit adunit)
    {
        a.a(new bl(this, s, context, flag, adunit));
    }

    void b(i k)
    {
        Context context = k.c.c;
        m m = k.c.e;
        AdUnit adunit = k.c.d;
        String s = adunit.b().toString();
        if (k.b.containsKey("url"))
        {
            String s1 = (String)k.b.get("url");
            if (s1.startsWith("market://"))
            {
                a(context, s1, s);
                return;
            }
            if ("true".equals(k.b.get("native")))
            {
                ja.a(2, d, "Explictly instructed to use native browser");
                b(context, a(m, adunit, k, s1), s);
                return;
            }
            k = new Intent(ia.a().b(), com/flurry/android/FlurryFullscreenTakeoverActivity);
            k.putExtra("url", s1);
            if (je.a(k))
            {
                a(context, k, s);
                return;
            } else
            {
                ja.a(6, d, "Can't start FlurryFullscreenTakeoverActivity, was it declared in the manifest? Falling back to default browser");
                b(context, s1, s);
                return;
            }
        } else
        {
            ja.a(6, d, (new StringBuilder()).append("failed to perform directOpen action: no url in ").append(k.c.a).toString());
            return;
        }
    }

    void b(i k, cj cj1, int l)
    {
        Context context = k.c.c;
        m m = k.c.e;
        AdUnit adunit = k.c.d;
        if (k.b.containsKey("url"))
        {
            String s;
            if (a((String)k.b.get("url")))
            {
                s = "urlVerified";
            } else
            {
                s = "urlNotVerified";
            }
            cj1.a(new bh(s, Collections.emptyMap(), context, adunit, m, k.c.f), this, l + 1);
        }
    }

    boolean b()
    {
        return FlurryAdModule.e();
    }

    public boolean b(Context context, String s, String s1)
    {
        return a(context, (new Intent("android.intent.action.VIEW")).setData(Uri.parse(s)), s1);
    }

    void c(i k)
    {
        String s = k.c.d.b().toString();
        if (k.b.containsKey("count"))
        {
            k = (String)k.b.get("count");
            int l;
            try
            {
                l = Integer.parseInt(k);
            }
            catch (NumberFormatException numberformatexception)
            {
                ja.a(6, d, (new StringBuilder()).append("caught NumberFormatException with count parameter in deleteAds:").append(k).toString());
                l = -1;
            }
            a.b().a(s, l);
        } else
        if (k.b.containsKey("groupId"))
        {
            k = (String)k.b.get("groupId");
            a.b().a(s, k);
            return;
        }
    }

    void c(i k, cj cj1, int l)
    {
        Context context = k.c.c;
        m m = k.c.e;
        AdUnit adunit = k.c.d;
        if (k.b.containsKey("idHash"))
        {
            String s1 = (String)k.b.get("idHash");
            Object obj = b.a(s1);
            String s = "capNotExhausted";
            cd cd1 = ((cd) (obj));
            if (obj != null)
            {
                cd1 = ((cd) (obj));
                if (b.a(((cd) (obj)).h()))
                {
                    ja.a(4, d, (new StringBuilder()).append("Discarding expired frequency cap info for idHash=").append(s1).toString());
                    b.b(s1);
                    cd1 = null;
                }
            }
            obj = s;
            if (cd1 != null)
            {
                obj = s;
                if (cd1.c() >= cd1.e())
                {
                    ja.a(4, d, (new StringBuilder()).append("Frequency cap exhausted for idHash=").append(s1).toString());
                    obj = "capExhausted";
                }
            }
            cj1.a(new bh(((String) (obj)), Collections.emptyMap(), context, adunit, m, k.c.f), this, l + 1);
        }
    }

    void c(String s)
    {
        ja.a(3, d, (new StringBuilder()).append("url after is: ").append(s).toString());
        s = new bm(this, s);
        a.a(s);
    }

    boolean c()
    {
        return jc.a().c();
    }

    void d(i k)
    {
        Context context;
        m m;
        AdUnit adunit;
        String s1;
label0:
        {
            context = k.c.c;
            m = k.c.e;
            adunit = k.c.d;
            String s = adunit.b().toString();
            if (k.b.containsKey("url"))
            {
                s1 = (String)k.b.get("url");
                if (!"true".equals(k.b.get("native")))
                {
                    break label0;
                }
                ja.a(2, d, "Explictly instructed to use native browser in pr.");
                b(context, a(m, adunit, k, s1), s);
            }
            return;
        }
        if (s1.startsWith("http"))
        {
            b(context, a(m, adunit, k, s1), true, adunit);
            return;
        } else
        {
            a(context, s1, false, adunit);
            return;
        }
    }

    boolean d(String s)
    {
        int k = 0;
        while (k < 5) 
        {
            ja.a(6, d, (new StringBuilder()).append(" sendURLUntilSuccess URL: ").append(s).toString());
            if (c() && !b())
            {
                HttpResponse httpresponse = a(s, 10000, 15000, true);
                int l = httpresponse.getStatusLine().getStatusCode();
                if (ja.c() <= 3)
                {
                    Toast.makeText(ia.a().b(), (new StringBuilder()).append("sUUS HTTP Response Code: ").append(l).toString(), 0).show();
                }
                if (httpresponse != null && l == 200)
                {
                    ja.a(3, d, (new StringBuilder()).append("URL hit succeeded for: ").append(s).toString());
                    return true;
                }
            } else
            {
                try
                {
                    Thread.sleep(100L);
                }
                catch (InterruptedException interruptedexception)
                {
                    ja.a(3, d, interruptedexception.getMessage());
                }
            }
            k++;
        }
        return false;
    }

    void e(i k)
    {
        Context context = k.c.c;
        AdUnit adunit = k.c.d;
        if (k.b.containsKey("package"))
        {
            a(context, (String)k.b.get("package"), adunit);
        }
    }

    boolean e(String s)
    {
        String s2 = ia.a().b().getPackageName();
        String s1 = s;
        if (s == null)
        {
            s1 = (new StringBuilder()).append("market://details?id=").append(s2).toString();
        }
        return a(s1, "android.intent.action.VIEW");
    }

    void f(i k)
    {
        m m = k.c.e;
        AdUnit adunit = k.c.d;
        if (k.b.containsKey("url"))
        {
            c(a(m, adunit, k, (String)k.b.get("url")));
        }
    }

    void g(i k)
    {
        a.w();
    }

    void h(i k)
    {
        boolean flag;
        if (k.b.containsKey("__sendToServer") && ((String)k.b.get("__sendToServer")).equals("true"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k.b.remove("__sendToServer");
        a.a(k.c.e, k.c.a, flag, k.b);
    }

    void i(i k)
    {
    }

    void j(i k)
    {
        if (k.b.containsKey("idHash"))
        {
            k = (String)k.b.get("idHash");
            k = b.a(k);
            if (k != null)
            {
                k.d();
                ja.a(4, d, (new StringBuilder()).append("updateViewCount:idHash=").append(k.b()).append(",newCap=").append(k.e()).append(",prevCap=").append(k.f()).append(",views=").append(k.c()).toString());
                if (k.c() > k.e())
                {
                    ja.a(6, d, (new StringBuilder()).append("FlurryAdAction: !! rendering a capped object: ").append(k.b()).toString());
                }
            }
        }
    }

}
