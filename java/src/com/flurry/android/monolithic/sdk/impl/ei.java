// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.File;
import java.io.FileInputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja, je

public class ei
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ei.getSimpleName();
    private File b;

    public ei(File file)
    {
        b = file;
        ja.a(3, a, (new StringBuilder()).append("Referrer file Name if it exists:  ").append(b).toString());
    }

    private String a(File file)
    {
        Throwable throwable;
        Object obj1 = null;
        Object obj;
        byte abyte0[];
        FileInputStream fileinputstream;
        int i;
        try
        {
            fileinputstream = new FileInputStream(file);
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            file = null;
            fileinputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
        }
_L3:
        obj = fileinputstream;
        file = new StringBuffer();
        obj = fileinputstream;
        abyte0 = new byte[1024];
_L2:
        obj = fileinputstream;
        i = fileinputstream.read(abyte0);
        if (i <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = fileinputstream;
        file.append(new String(abyte0, 0, i));
        if (true) goto _L2; else goto _L1
        throwable;
_L8:
        obj = fileinputstream;
        ja.a(6, a, "Error when loading persistent file", throwable);
        je.a(fileinputstream);
_L4:
        obj = obj1;
        if (file != null)
        {
            obj = file.toString();
        }
        return ((String) (obj));
_L1:
        je.a(fileinputstream);
        if (true) goto _L4; else goto _L3
_L6:
        je.a(((java.io.Closeable) (obj)));
        throw file;
        file;
        if (true) goto _L6; else goto _L5
_L5:
        throwable;
        file = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private Map a(String s)
    {
        HashMap hashmap = new HashMap();
        String as[] = s.split("&");
        int j = as.length;
        int i = 0;
        while (i < j) 
        {
            String as1[] = as[i].split("=");
            if (as1.length != 2)
            {
                ja.a(3, a, (new StringBuilder()).append("Invalid referrer Element: ").append(as[i]).append(" in referrer tag ").append(s).toString());
            } else
            {
                String s1 = URLDecoder.decode(as1[0]);
                String s2 = URLDecoder.decode(as1[1]);
                if (hashmap.get(s1) == null)
                {
                    hashmap.put(s1, new ArrayList());
                }
                ((List)hashmap.get(s1)).add(s2);
            }
            i++;
        }
        s = new StringBuilder();
        if (hashmap.get("utm_source") == null)
        {
            s.append("Campaign Source is missing.\n");
        }
        if (hashmap.get("utm_medium") == null)
        {
            s.append("Campaign Medium is missing.\n");
        }
        if (hashmap.get("utm_campaign") == null)
        {
            s.append("Campaign Name is missing.\n");
        }
        if (s.length() > 0)
        {
            ja.a(5, "Detected missing referrer keys", s.toString());
        }
        return hashmap;
    }

    public Map a()
    {
        Object obj = null;
        Map map = obj;
        if (b.exists())
        {
            ja.a(4, a, (new StringBuilder()).append("Loading referrer info from file:  ").append(b.getAbsolutePath()).toString());
            String s = a(b);
            map = obj;
            if (s != null)
            {
                ja.a(3, a, "Parsing referrer map");
                map = a(s);
            }
        }
        return map;
    }

}
