// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.InstallReceiver;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, ja, je

public class h extends jf
{

    final String a;
    final InstallReceiver b;

    public h(InstallReceiver installreceiver, String s)
    {
        b = installreceiver;
        a = s;
        super();
    }

    public void a()
    {
        Object obj;
        obj = null;
        ja.a(3, "InstallReceiver", "persistInstallReport ");
        File file = InstallReceiver.a(b).getParentFile();
        ja.a(3, "InstallReceiver", (new StringBuilder()).append("dir is...").append(file.toString()).toString());
        if (file.mkdirs() || file.exists())
        {
            break MISSING_BLOCK_LABEL_94;
        }
        ja.a(6, "InstallReceiver", (new StringBuilder()).append("Unable to create persistent dir: ").append(file).toString());
        je.a(null);
        return;
        Object obj1 = new FileOutputStream(InstallReceiver.a(b));
        ja.a(3, "InstallReceiver", "writing to ouput stream ");
        ((FileOutputStream) (obj1)).write(a.getBytes());
        obj = InstallReceiver.a(InstallReceiver.a(b, InstallReceiver.a(b)));
        if (obj == null) goto _L2; else goto _L1
_L1:
        java.util.Map.Entry entry;
        for (obj = ((Map) (obj)).entrySet().iterator(); ((Iterator) (obj)).hasNext(); ja.a(3, "InstallReceiver", (new StringBuilder()).append("entry: ").append((String)entry.getKey()).append("=").append(entry.getValue()).toString()))
        {
            entry = (java.util.Map.Entry)((Iterator) (obj)).next();
        }

          goto _L2
        Object obj2;
        obj2;
        obj = obj1;
        obj1 = obj2;
_L6:
        ja.a(6, "InstallReceiver", "", ((Throwable) (obj1)));
        je.a(((java.io.Closeable) (obj)));
        return;
_L2:
        je.a(((java.io.Closeable) (obj1)));
        return;
        obj;
        obj1 = null;
_L4:
        je.a(((java.io.Closeable) (obj1)));
        throw obj;
        obj;
        continue; /* Loop/switch isn't completed */
        obj2;
        obj1 = obj;
        obj = obj2;
        if (true) goto _L4; else goto _L3
_L3:
        obj1;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
