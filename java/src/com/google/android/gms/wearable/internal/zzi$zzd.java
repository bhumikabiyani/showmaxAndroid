// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzi

public static class zzaGe
    implements com.google.android.gms.wearable.GetFdForAssetResult
{

    private volatile boolean mClosed;
    private final Status zzHb;
    private volatile ParcelFileDescriptor zzaGe;
    private volatile InputStream zzaGf;

    public ParcelFileDescriptor getFd()
    {
        if (mClosed)
        {
            throw new IllegalStateException("Cannot access the file descriptor after release().");
        } else
        {
            return zzaGe;
        }
    }

    public InputStream getInputStream()
    {
        if (mClosed)
        {
            throw new IllegalStateException("Cannot access the input stream after release().");
        }
        if (zzaGe == null)
        {
            return null;
        }
        if (zzaGf == null)
        {
            zzaGf = new android.os.leDescriptor.AutoCloseInputStream(zzaGe);
        }
        return zzaGf;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public void release()
    {
        if (zzaGe == null)
        {
            return;
        }
        if (mClosed)
        {
            throw new IllegalStateException("releasing an already released result.");
        }
        if (zzaGf == null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        zzaGf.close();
_L1:
        mClosed = true;
        zzaGe = null;
        zzaGf = null;
        return;
        try
        {
            zzaGe.close();
        }
        catch (IOException ioexception)
        {
            return;
        }
          goto _L1
    }

    public eam(Status status, ParcelFileDescriptor parcelfiledescriptor)
    {
        mClosed = false;
        zzHb = status;
        zzaGe = parcelfiledescriptor;
    }
}
