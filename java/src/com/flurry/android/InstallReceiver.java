// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import com.flurry.android.monolithic.sdk.impl.h;
import com.flurry.android.monolithic.sdk.impl.ja;
import com.flurry.android.monolithic.sdk.impl.je;
import com.flurry.android.monolithic.sdk.impl.jf;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class InstallReceiver extends BroadcastReceiver
{

    private final Handler a;
    private File b;

    public InstallReceiver()
    {
        b = null;
        HandlerThread handlerthread = new HandlerThread("InstallReceiver");
        handlerthread.start();
        a = new Handler(handlerthread.getLooper());
    }

    public static File a(InstallReceiver installreceiver)
    {
        return installreceiver.b;
    }

    private String a()
    {
        return ".flurryinstallreceiver.";
    }

    public static String a(InstallReceiver installreceiver, File file)
    {
        return installreceiver.a(file);
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
        ja.a(6, "InstallReceiver", "Error when loading persistent file", throwable);
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

    public static Map a(String s)
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
                ja.a(5, "InstallReceiver", (new StringBuilder()).append("Invalid referrer Element: ").append(as[i]).append(" in referrer tag ").append(s).toString());
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
            ja.a(5, "InstallReceiver", (new StringBuilder()).append("Detected missing referrer keys : ").append(s.toString()).toString());
        }
        return hashmap;
    }

    private void a(jf jf)
    {
        a.post(jf);
    }

    private void b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        a(new h(this, s));
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void onReceive(Context context, Intent intent)
    {
        ja.a(4, "InstallReceiver", (new StringBuilder()).append("Received an Install nofication of ").append(intent.getAction()).toString());
        b = context.getFileStreamPath(a());
        ja.a(4, "InstallReceiver", (new StringBuilder()).append("fInstallReceiverFile is ").append(b).toString());
        String s = intent.getExtras().getString("referrer");
        ja.a(4, "InstallReceiver", (new StringBuilder()).append("Received an Install referrer of ").append(s).toString());
        if (s == null || !"com.android.vending.INSTALL_REFERRER".equals(intent.getAction()))
        {
            ja.a(5, "InstallReceiver", "referrer is null");
            return;
        }
        context = s;
        if (!s.contains("="))
        {
            ja.a(4, "InstallReceiver", (new StringBuilder()).append("referrer is before decoding: ").append(s).toString());
            context = URLDecoder.decode(s);
            ja.a(4, "InstallReceiver", (new StringBuilder()).append("referrer is: ").append(context).toString());
        }
        b(context);
    }
}
