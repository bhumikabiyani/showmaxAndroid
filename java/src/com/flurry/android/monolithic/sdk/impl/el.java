// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.os.Build;
import com.flurry.android.FlurryAgent;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.DigestOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            iv, eg, ie, ja, 
//            je, ei, ez

public class el
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/el.getSimpleName();
    private byte b[];

    public el(String s, String s1, String s2, boolean flag, long l, long l1, List list, File file, Map map, Map map1, Map map2)
        throws IOException
    {
        Object obj;
        b = null;
        obj = null;
        DataOutputStream dataoutputstream;
        iv iv1;
        ByteArrayOutputStream bytearrayoutputstream;
        DigestOutputStream digestoutputstream;
        iv1 = new iv();
        bytearrayoutputstream = new ByteArrayOutputStream();
        digestoutputstream = new DigestOutputStream(bytearrayoutputstream, iv1);
        dataoutputstream = new DataOutputStream(digestoutputstream);
        dataoutputstream.writeShort(27);
        dataoutputstream.writeShort(0);
        dataoutputstream.writeLong(0L);
        dataoutputstream.writeShort(0);
        dataoutputstream.writeShort(3);
        dataoutputstream.writeShort(FlurryAgent.getAgentVersion());
        dataoutputstream.writeLong(System.currentTimeMillis());
        dataoutputstream.writeUTF(s);
        dataoutputstream.writeUTF(s1);
        dataoutputstream.writeShort(map.size() + 1);
        dataoutputstream.writeShort(eg.i());
        dataoutputstream.writeUTF(s2);
        if (!map.isEmpty())
        {
            for (s = map.entrySet().iterator(); s.hasNext(); dataoutputstream.write(s1))
            {
                s1 = (java.util.Map.Entry)s.next();
                dataoutputstream.writeShort(((ie)s1.getKey()).c);
                s1 = ((ByteBuffer)s1.getValue()).array();
                dataoutputstream.writeShort(s1.length);
            }

        }
          goto _L1
        s1;
        s = dataoutputstream;
_L11:
        ja.a(6, a, "Error when generating report", s1);
        je.a(s);
        s = null;
_L9:
        b = s;
        return;
_L1:
        dataoutputstream.writeByte(0);
        dataoutputstream.writeBoolean(flag);
        dataoutputstream.writeLong(l);
        dataoutputstream.writeLong(l1);
        dataoutputstream.writeShort(6);
        dataoutputstream.writeUTF("device.model");
        dataoutputstream.writeUTF(Build.MODEL);
        dataoutputstream.writeUTF("build.brand");
        dataoutputstream.writeUTF(Build.BRAND);
        dataoutputstream.writeUTF("build.id");
        dataoutputstream.writeUTF(Build.ID);
        dataoutputstream.writeUTF("version.release");
        dataoutputstream.writeUTF(android.os.Build.VERSION.RELEASE);
        dataoutputstream.writeUTF("build.device");
        dataoutputstream.writeUTF(Build.DEVICE);
        dataoutputstream.writeUTF("build.product");
        dataoutputstream.writeUTF(Build.PRODUCT);
        if (map1 == null) goto _L3; else goto _L2
_L2:
        int i = map1.keySet().size();
_L6:
        ja.a(3, a, (new StringBuilder()).append("refMapSize is:  ").append(i).toString());
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_454;
        }
        map1 = (new ei(file)).a();
        ja.a(3, a, "after loading referrer file:  ");
        dataoutputstream.writeShort(i);
        if (map1 == null) goto _L5; else goto _L4
_L4:
        ja.a(3, a, "sending referrer values because it exists");
        for (s = map1.entrySet().iterator(); s.hasNext();)
        {
            s1 = (java.util.Map.Entry)s.next();
            ja.a(3, a, (new StringBuilder()).append("Referrer Entry:  ").append((String)s1.getKey()).append("=").append(s1.getValue()).toString());
            dataoutputstream.writeUTF((String)s1.getKey());
            ja.a(3, a, (new StringBuilder()).append("referrer key is :").append((String)s1.getKey()).toString());
            dataoutputstream.writeShort(((List)s1.getValue()).size());
            s1 = ((List)s1.getValue()).iterator();
            while (s1.hasNext()) 
            {
                s2 = (String)s1.next();
                dataoutputstream.writeUTF(s2);
                ja.a(3, a, (new StringBuilder()).append("referrer value is :").append(s2).toString());
            }
        }

          goto _L5
        s;
        s1 = dataoutputstream;
_L10:
        je.a(s1);
        throw s;
_L3:
        i = 0;
          goto _L6
_L5:
        dataoutputstream.writeBoolean(false);
        if (map2 == null)
        {
            break MISSING_BLOCK_LABEL_1059;
        }
        i = map2.keySet().size();
_L12:
        ja.a(3, a, (new StringBuilder()).append("optionsMapSize is:  ").append(i).toString());
        dataoutputstream.writeShort(i);
        if (map2 == null)
        {
            break MISSING_BLOCK_LABEL_948;
        }
        ja.a(3, a, "sending launch options");
        for (s = map2.entrySet().iterator(); s.hasNext();)
        {
            s1 = (java.util.Map.Entry)s.next();
            ja.a(3, a, (new StringBuilder()).append("Launch Options Key:  ").append((String)s1.getKey()).toString());
            dataoutputstream.writeUTF((String)s1.getKey());
            dataoutputstream.writeShort(((List)s1.getValue()).size());
            s1 = ((List)s1.getValue()).iterator();
            while (s1.hasNext()) 
            {
                s2 = (String)s1.next();
                dataoutputstream.writeUTF(s2);
                ja.a(3, a, (new StringBuilder()).append("Launch Options value is :").append(s2).toString());
            }
        }

        int j;
        j = list.size();
        dataoutputstream.writeShort(j);
        i = 0;
_L8:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        dataoutputstream.write(((ez)list.get(i)).a());
        i++;
        if (true) goto _L8; else goto _L7
_L7:
        digestoutputstream.on(false);
        dataoutputstream.write(iv1.a());
        dataoutputstream.close();
        s = bytearrayoutputstream.toByteArray();
        je.a(dataoutputstream);
          goto _L9
        s;
        s1 = null;
          goto _L10
        s2;
        s1 = s;
        s = s2;
          goto _L10
        s1;
        s = obj;
          goto _L11
        i = 0;
          goto _L12
    }

    public byte[] a()
    {
        return b;
    }

}
