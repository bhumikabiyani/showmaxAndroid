// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.Callable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzbd

class zzGV
    implements Callable
{

    final byte zzGV[];
    final ParcelFileDescriptor zzaGK;
    final zzbd zzaGL;

    public Object call()
        throws Exception
    {
        return zzvl();
    }

    public Boolean zzvl()
    {
        android.os.ileDescriptor.AutoCloseOutputStream autocloseoutputstream;
        if (Log.isLoggable("WearableClient", 3))
        {
            Log.d("WearableClient", (new StringBuilder()).append("processAssets: writing data to FD : ").append(zzaGK).toString());
        }
        autocloseoutputstream = new android.os.ileDescriptor.AutoCloseOutputStream(zzaGK);
        Object obj;
        autocloseoutputstream.write(zzGV);
        autocloseoutputstream.flush();
        if (Log.isLoggable("WearableClient", 3))
        {
            Log.d("WearableClient", (new StringBuilder()).append("processAssets: wrote data: ").append(zzaGK).toString());
        }
        obj = Boolean.valueOf(true);
        IOException ioexception;
        try
        {
            if (Log.isLoggable("WearableClient", 3))
            {
                Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(zzaGK).toString());
            }
            autocloseoutputstream.close();
        }
        catch (IOException ioexception1)
        {
            return ((Boolean) (obj));
        }
        return ((Boolean) (obj));
        obj;
        Log.w("WearableClient", (new StringBuilder()).append("processAssets: writing data failed: ").append(zzaGK).toString());
        try
        {
            if (Log.isLoggable("WearableClient", 3))
            {
                Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(zzaGK).toString());
            }
            autocloseoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception) { }
        return Boolean.valueOf(false);
        obj;
        try
        {
            if (Log.isLoggable("WearableClient", 3))
            {
                Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(zzaGK).toString());
            }
            autocloseoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception) { }
        throw obj;
    }

    tream(zzbd zzbd1, ParcelFileDescriptor parcelfiledescriptor, byte abyte0[])
    {
        zzaGL = zzbd1;
        zzaGK = parcelfiledescriptor;
        zzGV = abyte0;
        super();
    }
}
