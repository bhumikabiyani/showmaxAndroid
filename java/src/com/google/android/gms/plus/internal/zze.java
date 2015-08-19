// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.internal.zzlk;
import com.google.android.gms.internal.zztt;
import com.google.android.gms.internal.zztw;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

// Referenced classes of package com.google.android.gms.plus.internal:
//            zzh, zzd, zza

public class com.google.android.gms.plus.internal.zze extends zzk
{
    static final class zza
        implements com.google.android.gms.plus.Moments.LoadMomentsResult
    {

        private final Status zzHb;
        private final String zzaut;
        private final String zzauu;
        private final MomentBuffer zzauv;

        public MomentBuffer getMomentBuffer()
        {
            return zzauv;
        }

        public String getNextPageToken()
        {
            return zzaut;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public String getUpdated()
        {
            return zzauu;
        }

        public void release()
        {
            if (zzauv != null)
            {
                zzauv.release();
            }
        }

        public zza(Status status, DataHolder dataholder, String s, String s1)
        {
            zzHb = status;
            zzaut = s;
            zzauu = s1;
            if (dataholder != null)
            {
                status = new MomentBuffer(dataholder);
            } else
            {
                status = null;
            }
            zzauv = status;
        }
    }

    static final class zzb
        implements com.google.android.gms.plus.People.LoadPeopleResult
    {

        private final Status zzHb;
        private final String zzaut;
        private final PersonBuffer zzauw;

        public String getNextPageToken()
        {
            return zzaut;
        }

        public PersonBuffer getPersonBuffer()
        {
            return zzauw;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public void release()
        {
            if (zzauw != null)
            {
                zzauw.release();
            }
        }

        public zzb(Status status, DataHolder dataholder, String s)
        {
            zzHb = status;
            zzaut = s;
            if (dataholder != null)
            {
                status = new PersonBuffer(dataholder);
            } else
            {
                status = null;
            }
            zzauw = status;
        }
    }

    static final class zzc extends com.google.android.gms.plus.internal.zza
    {

        private final com.google.android.gms.common.api.zza.zzb zzanf;

        public void zzaI(Status status)
        {
            zzanf.zzd(status);
        }

        public zzc(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzanf = zzb1;
        }
    }

    static final class zzd extends com.google.android.gms.plus.internal.zza
    {

        private final com.google.android.gms.common.api.zza.zzb zzanf;

        public void zza(DataHolder dataholder, String s, String s1)
        {
            Object obj;
            Status status;
            if (dataholder.zziu() != null)
            {
                obj = (PendingIntent)dataholder.zziu().getParcelable("pendingIntent");
            } else
            {
                obj = null;
            }
            status = new Status(dataholder.getStatusCode(), null, ((PendingIntent) (obj)));
            obj = dataholder;
            if (!status.isSuccess())
            {
                obj = dataholder;
                if (dataholder != null)
                {
                    if (!dataholder.isClosed())
                    {
                        dataholder.close();
                    }
                    obj = null;
                }
            }
            zzanf.zzd(new zza(status, ((DataHolder) (obj)), s, s1));
        }

        public zzd(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzanf = zzb1;
        }
    }

    static final class zze extends com.google.android.gms.plus.internal.zza
    {

        private final com.google.android.gms.common.api.zza.zzb zzanf;

        public void zza(DataHolder dataholder, String s)
        {
            Object obj;
            Status status;
            if (dataholder.zziu() != null)
            {
                obj = (PendingIntent)dataholder.zziu().getParcelable("pendingIntent");
            } else
            {
                obj = null;
            }
            status = new Status(dataholder.getStatusCode(), null, ((PendingIntent) (obj)));
            obj = dataholder;
            if (!status.isSuccess())
            {
                obj = dataholder;
                if (dataholder != null)
                {
                    if (!dataholder.isClosed())
                    {
                        dataholder.close();
                    }
                    obj = null;
                }
            }
            zzanf.zzd(new zzb(status, ((DataHolder) (obj)), s));
        }

        public zze(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzanf = zzb1;
        }
    }

    static final class zzf extends com.google.android.gms.plus.internal.zza
    {

        private final com.google.android.gms.common.api.zza.zzb zzanf;

        public void zzj(int i, Bundle bundle)
        {
            if (bundle != null)
            {
                bundle = (PendingIntent)bundle.getParcelable("pendingIntent");
            } else
            {
                bundle = null;
            }
            bundle = new Status(i, null, bundle);
            zzanf.zzd(bundle);
        }

        public zzf(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzanf = zzb1;
        }
    }


    private Person zzaur;
    private final zzh zzaus;

    public com.google.android.gms.plus.internal.zze(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzf1, zzh zzh1, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        super(context, looper, 2, connectioncallbacks, onconnectionfailedlistener, zzf1);
        zzaus = zzh1;
    }

    public static boolean zzf(String as[])
    {
        while (as == null || as.length == 0 || as.length == 1 && "plus_one_placeholder_scope".equals(as[0])) 
        {
            return false;
        }
        return true;
    }

    private Bundle zzrP()
    {
        Bundle bundle = zzaus.zzsa();
        bundle.putStringArray("request_visible_actions", zzaus.zzrT());
        bundle.putString("auth_package", zzaus.zzrV());
        return bundle;
    }

    public String getAccountName()
    {
        zzfc();
        String s;
        try
        {
            s = ((com.google.android.gms.plus.internal.zzd)zzjb()).getAccountName();
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
        return s;
    }

    public ICancelToken zza(com.google.android.gms.common.api.zza.zzb zzb1, int i, String s)
    {
        zzfc();
        zzb1 = new zze(zzb1);
        try
        {
            s = ((com.google.android.gms.plus.internal.zzd)zzjb()).zza(zzb1, 1, i, -1, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            zzb1.zza(DataHolder.zzay(8), null);
            return null;
        }
        return s;
    }

    protected void zza(int i, IBinder ibinder, Bundle bundle)
    {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person"))
        {
            zzaur = zztw.zzj(bundle.getByteArray("loaded_person"));
        }
        super.zza(i, ibinder, bundle);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, int i, String s, Uri uri, String s1, String s2)
    {
        zzfc();
        if (zzb1 != null)
        {
            zzb1 = new zzd(zzb1);
        } else
        {
            zzb1 = null;
        }
        try
        {
            ((com.google.android.gms.plus.internal.zzd)zzjb()).zza(zzb1, i, s, uri, s1, s2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            zzb1.zza(DataHolder.zzay(8), null, null);
        }
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, Moment moment)
    {
        zzfc();
        if (zzb1 != null)
        {
            zzb1 = new zzc(zzb1);
        } else
        {
            zzb1 = null;
        }
        try
        {
            moment = zzlk.zza((zztt)moment);
            ((com.google.android.gms.plus.internal.zzd)zzjb()).zza(zzb1, moment);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Moment moment) { }
        if (zzb1 == null)
        {
            throw new IllegalStateException(moment);
        } else
        {
            zzb1.zzaI(new Status(8, null, null));
            return;
        }
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, Collection collection)
    {
        zzfc();
        zzb1 = new zze(zzb1);
        try
        {
            ((com.google.android.gms.plus.internal.zzd)zzjb()).zza(zzb1, new ArrayList(collection));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Collection collection)
        {
            zzb1.zza(DataHolder.zzay(8), null);
        }
    }

    public void zzcE(String s)
    {
        zzfc();
        try
        {
            ((com.google.android.gms.plus.internal.zzd)zzjb()).zzcE(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalStateException(s);
        }
    }

    protected String zzcF()
    {
        return "com.google.android.gms.plus.service.START";
    }

    protected String zzcG()
    {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    protected com.google.android.gms.plus.internal.zzd zzcz(IBinder ibinder)
    {
        return com.google.android.gms.plus.internal.zzd.zza.zzcy(ibinder);
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, String as[])
    {
        zza(zzb1, Arrays.asList(as));
    }

    public boolean zzhc()
    {
        return zzf(zzja().zziQ());
    }

    protected Bundle zzhq()
    {
        return zzrP();
    }

    public void zzj(com.google.android.gms.common.api.zza.zzb zzb1)
    {
        zza(zzb1, 20, null, null, null, "me");
    }

    protected Bundle zzjc()
    {
        return zzrP();
    }

    public void zzk(com.google.android.gms.common.api.zza.zzb zzb1)
    {
        zzfc();
        zzb1 = new zze(zzb1);
        try
        {
            ((com.google.android.gms.plus.internal.zzd)zzjb()).zza(zzb1, 2, 1, -1, null);
            return;
        }
        catch (RemoteException remoteexception)
        {
            zzb1.zza(DataHolder.zzay(8), null);
        }
    }

    public void zzl(com.google.android.gms.common.api.zza.zzb zzb1)
    {
        zzfc();
        zzrK();
        zzb1 = new zzf(zzb1);
        try
        {
            ((com.google.android.gms.plus.internal.zzd)zzjb()).zzb(zzb1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            zzb1.zzj(8, null);
        }
    }

    protected IInterface zzp(IBinder ibinder)
    {
        return zzcz(ibinder);
    }

    public ICancelToken zzr(com.google.android.gms.common.api.zza.zzb zzb1, String s)
    {
        return zza(zzb1, 0, s);
    }

    public void zzrK()
    {
        zzfc();
        try
        {
            zzaur = null;
            ((com.google.android.gms.plus.internal.zzd)zzjb()).zzrK();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
    }

    public Person zzrO()
    {
        zzfc();
        return zzaur;
    }
}
