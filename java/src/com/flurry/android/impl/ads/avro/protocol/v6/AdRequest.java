// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            Location, AdViewContainer, TestAds

public class AdRequest extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"AdRequest\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"agentVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"adSpaceName\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}}},{\"name\":\"location\",\"type\":{\"type\":\"record\",\"name\":\"Location\",\"fields\":[{\"name\":\"lat\",\"type\":\"float\",\"default\":0.0},{\"name\":\"lon\",\"type\":\"float\",\"default\":0.0}]},\"default\":\"null\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false},{\"name\":\"bindings\",\"type\":{\"type\":\"array\",\"items\":\"int\"}},{\"name\":\"adViewContainer\",\"type\":{\"type\":\"record\",\"name\":\"AdViewContainer\",\"fields\":[{\"name\":\"viewWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"viewHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"screenWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"screenHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"density\",\"type\":\"float\",\"default\":1.0}]},\"default\":\"null\"},{\"name\":\"locale\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"timezone\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"osVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"devicePlatform\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"testAds\",\"type\":{\"type\":\"record\",\"name\":\"TestAds\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]},\"default\":\"null\"},{\"name\":\"keywords\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]},{\"name\":\"refresh\",\"type\":\"boolean\",\"default\":false},{\"name\":\"canDoSKAppStore\",\"type\":\"boolean\",\"default\":false},{\"name\":\"networkStatus\",\"type\":\"int\",\"default\":1},{\"name\":\"frequencyCapInfos\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]}}},{\"name\":\"adTrackingEnabled\",\"type\":\"boolean\",\"default\":false},{\"name\":\"preferredLanguage\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"bcat\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]}]}");
    public CharSequence a;
    public CharSequence b;
    public CharSequence c;
    public long d;
    public List e;
    public Location f;
    public boolean g;
    public List h;
    public AdViewContainer i;
    public CharSequence j;
    public CharSequence k;
    public CharSequence l;
    public CharSequence m;
    public TestAds n;
    public Map o;
    public boolean p;
    public boolean q;
    public int r;
    public List s;
    public boolean t;
    public CharSequence u;
    public List v;

    public AdRequest()
    {
    }

    public static Builder b()
    {
        return new Builder(null);
    }

    public ji a()
    {
        return SCHEMA$;
    }

    public Object a(int i1)
    {
        switch (i1)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            return a;

        case 1: // '\001'
            return b;

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return Long.valueOf(d);

        case 4: // '\004'
            return e;

        case 5: // '\005'
            return f;

        case 6: // '\006'
            return Boolean.valueOf(g);

        case 7: // '\007'
            return h;

        case 8: // '\b'
            return i;

        case 9: // '\t'
            return j;

        case 10: // '\n'
            return k;

        case 11: // '\013'
            return l;

        case 12: // '\f'
            return m;

        case 13: // '\r'
            return n;

        case 14: // '\016'
            return o;

        case 15: // '\017'
            return Boolean.valueOf(p);

        case 16: // '\020'
            return Boolean.valueOf(q);

        case 17: // '\021'
            return Integer.valueOf(r);

        case 18: // '\022'
            return s;

        case 19: // '\023'
            return Boolean.valueOf(t);

        case 20: // '\024'
            return u;

        case 21: // '\025'
            return v;
        }
    }

    public void a(int i1, Object obj)
    {
        switch (i1)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            a = (CharSequence)obj;
            return;

        case 1: // '\001'
            b = (CharSequence)obj;
            return;

        case 2: // '\002'
            c = (CharSequence)obj;
            return;

        case 3: // '\003'
            d = ((Long)obj).longValue();
            return;

        case 4: // '\004'
            e = (List)obj;
            return;

        case 5: // '\005'
            f = (Location)obj;
            return;

        case 6: // '\006'
            g = ((Boolean)obj).booleanValue();
            return;

        case 7: // '\007'
            h = (List)obj;
            return;

        case 8: // '\b'
            i = (AdViewContainer)obj;
            return;

        case 9: // '\t'
            j = (CharSequence)obj;
            return;

        case 10: // '\n'
            k = (CharSequence)obj;
            return;

        case 11: // '\013'
            l = (CharSequence)obj;
            return;

        case 12: // '\f'
            m = (CharSequence)obj;
            return;

        case 13: // '\r'
            n = (TestAds)obj;
            return;

        case 14: // '\016'
            o = (Map)obj;
            return;

        case 15: // '\017'
            p = ((Boolean)obj).booleanValue();
            return;

        case 16: // '\020'
            q = ((Boolean)obj).booleanValue();
            return;

        case 17: // '\021'
            r = ((Integer)obj).intValue();
            return;

        case 18: // '\022'
            s = (List)obj;
            return;

        case 19: // '\023'
            t = ((Boolean)obj).booleanValue();
            return;

        case 20: // '\024'
            u = (CharSequence)obj;
            return;

        case 21: // '\025'
            v = (List)obj;
            break;
        }
    }

    public void a(TestAds testads)
    {
        n = testads;
    }

    public void a(Boolean boolean1)
    {
        p = boolean1.booleanValue();
    }

    public void a(CharSequence charsequence)
    {
        c = charsequence;
    }

    public void a(Map map)
    {
        o = map;
    }


    private class Builder extends nv
    {

        private CharSequence a;
        private CharSequence b;
        private CharSequence c;
        private long d;
        private List e;
        private Location f;
        private boolean g;
        private List h;
        private AdViewContainer i;
        private CharSequence j;
        private CharSequence k;
        private CharSequence l;
        private CharSequence m;
        private TestAds n;
        private Map o;
        private boolean p;
        private boolean q;
        private int r;
        private List s;
        private boolean t;
        private CharSequence u;
        private List v;

        public Builder a(int i1)
        {
            a(b()[17], Integer.valueOf(i1));
            r = i1;
            c()[17] = true;
            return this;
        }

        public Builder a(long l1)
        {
            a(b()[3], Long.valueOf(l1));
            d = l1;
            c()[3] = true;
            return this;
        }

        public Builder a(AdViewContainer adviewcontainer)
        {
            a(b()[8], adviewcontainer);
            i = adviewcontainer;
            c()[8] = true;
            return this;
        }

        public Builder a(Location location)
        {
            a(b()[5], location);
            f = location;
            c()[5] = true;
            return this;
        }

        public Builder a(CharSequence charsequence)
        {
            a(b()[0], charsequence);
            a = charsequence;
            c()[0] = true;
            return this;
        }

        public Builder a(List list)
        {
            a(b()[4], list);
            e = list;
            c()[4] = true;
            return this;
        }

        public Builder a(boolean flag)
        {
            a(b()[6], Boolean.valueOf(flag));
            g = flag;
            c()[6] = true;
            return this;
        }

        public AdRequest a()
        {
            AdRequest adrequest = new AdRequest();
            if (!c()[0]) goto _L2; else goto _L1
_L1:
            Object obj = a;
_L43:
            adrequest.a = ((CharSequence) (obj));
            if (!c()[1]) goto _L4; else goto _L3
_L3:
            obj = b;
_L44:
            adrequest.b = ((CharSequence) (obj));
            if (!c()[2]) goto _L6; else goto _L5
_L5:
            obj = c;
_L45:
            adrequest.c = ((CharSequence) (obj));
            if (!c()[3]) goto _L8; else goto _L7
_L7:
            long l1 = d;
_L46:
            adrequest.d = l1;
            if (!c()[4]) goto _L10; else goto _L9
_L9:
            obj = e;
_L47:
            adrequest.e = ((List) (obj));
            if (!c()[5]) goto _L12; else goto _L11
_L11:
            obj = f;
_L48:
            adrequest.f = ((Location) (obj));
            if (!c()[6]) goto _L14; else goto _L13
_L13:
            boolean flag = g;
_L49:
            adrequest.g = flag;
            if (!c()[7]) goto _L16; else goto _L15
_L15:
            obj = h;
_L50:
            adrequest.h = ((List) (obj));
            if (!c()[8]) goto _L18; else goto _L17
_L17:
            obj = i;
_L51:
            adrequest.i = ((AdViewContainer) (obj));
            if (!c()[9]) goto _L20; else goto _L19
_L19:
            obj = j;
_L52:
            adrequest.j = ((CharSequence) (obj));
            if (!c()[10]) goto _L22; else goto _L21
_L21:
            obj = k;
_L53:
            adrequest.k = ((CharSequence) (obj));
            if (!c()[11]) goto _L24; else goto _L23
_L23:
            obj = l;
_L54:
            adrequest.l = ((CharSequence) (obj));
            if (!c()[12]) goto _L26; else goto _L25
_L25:
            obj = m;
_L55:
            adrequest.m = ((CharSequence) (obj));
            if (!c()[13]) goto _L28; else goto _L27
_L27:
            obj = n;
_L56:
            adrequest.n = ((TestAds) (obj));
            if (!c()[14]) goto _L30; else goto _L29
_L29:
            obj = o;
_L57:
            adrequest.o = ((Map) (obj));
            if (!c()[15]) goto _L32; else goto _L31
_L31:
            flag = p;
_L58:
            adrequest.p = flag;
            if (!c()[16]) goto _L34; else goto _L33
_L33:
            flag = q;
_L59:
            adrequest.q = flag;
            if (!c()[17]) goto _L36; else goto _L35
_L35:
            int i1 = r;
_L60:
            adrequest.r = i1;
            if (!c()[18]) goto _L38; else goto _L37
_L37:
            obj = s;
_L61:
            adrequest.s = ((List) (obj));
            if (!c()[19]) goto _L40; else goto _L39
_L39:
            flag = t;
_L62:
            adrequest.t = flag;
            if (!c()[20]) goto _L42; else goto _L41
_L41:
            obj = u;
_L63:
            adrequest.u = ((CharSequence) (obj));
            if (!c()[21])
            {
                break MISSING_BLOCK_LABEL_849;
            }
            obj = v;
_L64:
            adrequest.v = ((List) (obj));
            return adrequest;
_L2:
            try
            {
                obj = (CharSequence)a(b()[0]);
            }
            catch (Exception exception)
            {
                throw new jg(exception);
            }
              goto _L43
_L4:
            obj = (CharSequence)a(b()[1]);
              goto _L44
_L6:
            obj = (CharSequence)a(b()[2]);
              goto _L45
_L8:
            l1 = ((Long)a(b()[3])).longValue();
              goto _L46
_L10:
            obj = (List)a(b()[4]);
              goto _L47
_L12:
            obj = (Location)a(b()[5]);
              goto _L48
_L14:
            flag = ((Boolean)a(b()[6])).booleanValue();
              goto _L49
_L16:
            obj = (List)a(b()[7]);
              goto _L50
_L18:
            obj = (AdViewContainer)a(b()[8]);
              goto _L51
_L20:
            obj = (CharSequence)a(b()[9]);
              goto _L52
_L22:
            obj = (CharSequence)a(b()[10]);
              goto _L53
_L24:
            obj = (CharSequence)a(b()[11]);
              goto _L54
_L26:
            obj = (CharSequence)a(b()[12]);
              goto _L55
_L28:
            obj = (TestAds)a(b()[13]);
              goto _L56
_L30:
            obj = (Map)a(b()[14]);
              goto _L57
_L32:
            flag = ((Boolean)a(b()[15])).booleanValue();
              goto _L58
_L34:
            flag = ((Boolean)a(b()[16])).booleanValue();
              goto _L59
_L36:
            i1 = ((Integer)a(b()[17])).intValue();
              goto _L60
_L38:
            obj = (List)a(b()[18]);
              goto _L61
_L40:
            flag = ((Boolean)a(b()[19])).booleanValue();
              goto _L62
_L42:
            obj = (CharSequence)a(b()[20]);
              goto _L63
            obj = (List)a(b()[21]);
              goto _L64
        }

        public Builder b(CharSequence charsequence)
        {
            a(b()[1], charsequence);
            b = charsequence;
            c()[1] = true;
            return this;
        }

        public Builder b(List list)
        {
            a(b()[7], list);
            h = list;
            c()[7] = true;
            return this;
        }

        public Builder b(boolean flag)
        {
            a(b()[16], Boolean.valueOf(flag));
            q = flag;
            c()[16] = true;
            return this;
        }

        public Builder c(CharSequence charsequence)
        {
            a(b()[2], charsequence);
            c = charsequence;
            c()[2] = true;
            return this;
        }

        public Builder c(List list)
        {
            a(b()[18], list);
            s = list;
            c()[18] = true;
            return this;
        }

        public Builder d(CharSequence charsequence)
        {
            a(b()[9], charsequence);
            j = charsequence;
            c()[9] = true;
            return this;
        }

        public Builder d(List list)
        {
            a(b()[21], list);
            v = list;
            c()[21] = true;
            return this;
        }

        public Builder e(CharSequence charsequence)
        {
            a(b()[10], charsequence);
            k = charsequence;
            c()[10] = true;
            return this;
        }

        public Builder f(CharSequence charsequence)
        {
            a(b()[11], charsequence);
            l = charsequence;
            c()[11] = true;
            return this;
        }

        public Builder g(CharSequence charsequence)
        {
            a(b()[12], charsequence);
            m = charsequence;
            c()[12] = true;
            return this;
        }

        public Builder h(CharSequence charsequence)
        {
            a(b()[20], charsequence);
            u = charsequence;
            c()[20] = true;
            return this;
        }

        private Builder()
        {
            super(AdRequest.SCHEMA$);
        }

        Builder(_cls1 _pcls1)
        {
            this();
        }
    }

}
