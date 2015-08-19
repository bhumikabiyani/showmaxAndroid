// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja

public final class k
{

    static final List a = Arrays.asList(new String[] {
        "requested", "filled", "unfilled", "rendered", "clicked", "videoStart", "videoCompleted", "videoProgressed", "sentToUrl", "adClosed", 
        "adWillClose", "renderFailed", "requestAdComponents", "urlVerified", "capExhausted", "capNotExhausted"
    });
    private static final String b = com/flurry/android/monolithic/sdk/impl/k.getSimpleName();
    private final String c;
    private final boolean d;
    private final long e;
    private final Map f;

    public k(DataInput datainput)
        throws IOException
    {
        c = datainput.readUTF();
        d = datainput.readBoolean();
        e = datainput.readLong();
        f = new HashMap();
        short word1 = datainput.readShort();
        for (short word0 = 0; word0 < word1; word0++)
        {
            f.put(datainput.readUTF(), datainput.readUTF());
        }

    }

    public k(String s, boolean flag, long l, Map map)
    {
        if (!a.contains(s))
        {
            ja.a(b, (new StringBuilder()).append("AdEvent initialized with unrecognized type: ").append(s).toString());
        }
        c = s;
        d = flag;
        e = l;
        if (map == null)
        {
            f = new HashMap();
            return;
        } else
        {
            f = map;
            return;
        }
    }

    public String a()
    {
        return c;
    }

    public void a(DataOutput dataoutput)
        throws IOException
    {
        dataoutput.writeUTF(c);
        dataoutput.writeBoolean(d);
        dataoutput.writeLong(e);
        dataoutput.writeShort(f.size());
        java.util.Map.Entry entry;
        for (Iterator iterator = f.entrySet().iterator(); iterator.hasNext(); dataoutput.writeUTF((String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
            dataoutput.writeUTF((String)entry.getKey());
        }

    }

    public boolean b()
    {
        return d;
    }

    public long c()
    {
        return e;
    }

    public Map d()
    {
        return f;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof k))
            {
                return false;
            }
            obj = (k)obj;
            if (!TextUtils.equals(c, ((k) (obj)).c) || d != ((k) (obj)).d || e != ((k) (obj)).e || f != ((k) (obj)).f && (f == null || !f.equals(((k) (obj)).f)))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 17;
        if (c != null)
        {
            i = 0x11 | c.hashCode();
        }
        int j = i;
        if (d)
        {
            j = i | 1;
        }
        j = (int)((long)j | e);
        i = j;
        if (f != null)
        {
            i = j | f.hashCode();
        }
        return i;
    }

}
