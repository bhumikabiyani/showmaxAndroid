// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            k

public class m
{

    private static int a = 1;
    private final int b;
    private final long c;
    private final String d;
    private List e;

    public m(long l, String s, long l1)
    {
        int i = a;
        a = i + 1;
        b = i;
        c = l;
        d = s;
        e = new ArrayList();
    }

    public m(DataInput datainput)
        throws IOException
    {
        b = datainput.readInt();
        c = datainput.readLong();
        String s1 = datainput.readUTF();
        String s = s1;
        if (s1.equals(""))
        {
            s = null;
        }
        d = s;
        e = new ArrayList();
        short word1 = datainput.readShort();
        for (short word0 = 0; word0 < word1; word0++)
        {
            e.add(new k(datainput));
        }

    }

    public int a()
    {
        return b;
    }

    public void a(k k1)
    {
        e.add(k1);
    }

    public void a(DataOutput dataoutput)
        throws IOException
    {
        dataoutput.writeInt(b);
        dataoutput.writeLong(c);
        Object obj;
        if (d == null)
        {
            obj = "";
        } else
        {
            obj = d;
        }
        dataoutput.writeUTF(((String) (obj)));
        dataoutput.writeShort(e.size());
        for (obj = e.iterator(); ((Iterator) (obj)).hasNext(); ((k)((Iterator) (obj)).next()).a(dataoutput)) { }
    }

    public String b()
    {
        return d;
    }

    public long c()
    {
        return c;
    }

    public List d()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof m))
            {
                return false;
            }
            obj = (m)obj;
            if (b != ((m) (obj)).b || c != ((m) (obj)).c || !TextUtils.equals(d, ((m) (obj)).d) || e != ((m) (obj)).e && (e == null || !e.equals(((m) (obj)).e)))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int j = (int)((long)(0x11 | b) | c);
        int i = j;
        if (d != null)
        {
            i = j | d.hashCode();
        }
        j = i;
        if (e != null)
        {
            j = i | e.hashCode();
        }
        return j;
    }

}
