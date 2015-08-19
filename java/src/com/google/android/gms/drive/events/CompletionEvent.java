// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.data.zza;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.zzaj;
import com.google.android.gms.drive.internal.zzw;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzlz;
import com.google.android.gms.internal.zzmi;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.drive.events:
//            ResourceEvent, zzb

public final class CompletionEvent
    implements SafeParcelable, ResourceEvent
{

    public static final android.os.Parcelable.Creator CREATOR = new zzb();
    public static final int STATUS_CANCELED = 3;
    public static final int STATUS_CONFLICT = 2;
    public static final int STATUS_FAILURE = 1;
    public static final int STATUS_SUCCESS = 0;
    final int zzFG;
    final String zzHg;
    final DriveId zzRX;
    final ParcelFileDescriptor zzSP;
    final ParcelFileDescriptor zzSQ;
    final MetadataBundle zzSR;
    final List zzSS;
    final IBinder zzST;
    private boolean zzSU;
    private boolean zzSV;
    private boolean zzSW;
    final int zzrX;

    CompletionEvent(int i, DriveId driveid, String s, ParcelFileDescriptor parcelfiledescriptor, ParcelFileDescriptor parcelfiledescriptor1, MetadataBundle metadatabundle, List list, 
            int j, IBinder ibinder)
    {
        zzSU = false;
        zzSV = false;
        zzSW = false;
        zzFG = i;
        zzRX = driveid;
        zzHg = s;
        zzSP = parcelfiledescriptor;
        zzSQ = parcelfiledescriptor1;
        zzSR = metadatabundle;
        zzSS = list;
        zzrX = j;
        zzST = ibinder;
    }

    private void zzP(boolean flag)
    {
        zzkA();
        zzSW = true;
        zzlz.zza(zzSP);
        zzlz.zza(zzSQ);
        if (zzSR.zzc(zzmi.zzVU))
        {
            ((zza)zzSR.zza(zzmi.zzVU)).release();
        }
        if (zzST == null)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("No callback on ");
            String s;
            if (flag)
            {
                s = "snooze";
            } else
            {
                s = "dismiss";
            }
            zzw.zzs("CompletionEvent", stringbuilder.append(s).toString());
            return;
        }
        try
        {
            com.google.android.gms.drive.internal.zzaj.zza.zzaf(zzST).zzP(flag);
            return;
        }
        catch (RemoteException remoteexception)
        {
            StringBuilder stringbuilder1 = (new StringBuilder()).append("RemoteException on ");
            String s1;
            if (flag)
            {
                s1 = "snooze";
            } else
            {
                s1 = "dismiss";
            }
            zzw.zzs("CompletionEvent", stringbuilder1.append(s1).append(": ").append(remoteexception).toString());
            return;
        }
    }

    private void zzkA()
    {
        if (zzSW)
        {
            throw new IllegalStateException("Event has already been dismissed or snoozed.");
        } else
        {
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void dismiss()
    {
        zzP(false);
    }

    public String getAccountName()
    {
        zzkA();
        return zzHg;
    }

    public InputStream getBaseContentsInputStream()
    {
        zzkA();
        if (zzSP == null)
        {
            return null;
        }
        if (zzSU)
        {
            throw new IllegalStateException("getBaseInputStream() can only be called once per CompletionEvent instance.");
        } else
        {
            zzSU = true;
            return new FileInputStream(zzSP.getFileDescriptor());
        }
    }

    public DriveId getDriveId()
    {
        zzkA();
        return zzRX;
    }

    public InputStream getModifiedContentsInputStream()
    {
        zzkA();
        if (zzSQ == null)
        {
            return null;
        }
        if (zzSV)
        {
            throw new IllegalStateException("getModifiedInputStream() can only be called once per CompletionEvent instance.");
        } else
        {
            zzSV = true;
            return new FileInputStream(zzSQ.getFileDescriptor());
        }
    }

    public MetadataChangeSet getModifiedMetadataChangeSet()
    {
        zzkA();
        if (zzSR != null)
        {
            return new MetadataChangeSet(zzSR);
        } else
        {
            return null;
        }
    }

    public int getStatus()
    {
        zzkA();
        return zzrX;
    }

    public List getTrackingTags()
    {
        zzkA();
        return new ArrayList(zzSS);
    }

    public int getType()
    {
        return 2;
    }

    public void snooze()
    {
        zzP(true);
    }

    public String toString()
    {
        String s;
        if (zzSS == null)
        {
            s = "<null>";
        } else
        {
            s = (new StringBuilder()).append("'").append(TextUtils.join("','", zzSS)).append("'").toString();
        }
        return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", new Object[] {
            zzRX, Integer.valueOf(zzrX), s
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.events.zzb.zza(this, parcel, i);
    }

}
