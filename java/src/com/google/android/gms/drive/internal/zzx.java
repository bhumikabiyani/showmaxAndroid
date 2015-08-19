// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi;
import com.google.android.gms.drive.FileUploadPreferences;

// Referenced classes of package com.google.android.gms.drive.internal:
//            FileUploadPreferencesImpl, zzc, OnDeviceUsagePreferenceResponse, zzr, 
//            zzag, zzq, SetFileUploadPreferencesRequest, zzbl

public class zzx
    implements DrivePreferencesApi
{
    private class zza extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;
        final zzx zzUi;

        public void zza(OnDeviceUsagePreferenceResponse ondeviceusagepreferenceresponse)
            throws RemoteException
        {
            zzHa.zzd(zzUi. new zzb(Status.zzNo, ondeviceusagepreferenceresponse.zzkN()));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(zzUi. new zzb(status, null));
        }

        private zza(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzUi = zzx.this;
            super();
            zzHa = zzb1;
        }

    }

    private class zzb
        implements com.google.android.gms.drive.DrivePreferencesApi.FileUploadPreferencesResult
    {

        private final Status zzHb;
        final zzx zzUi;
        private final FileUploadPreferences zzUk;

        public FileUploadPreferences getFileUploadPreferences()
        {
            return zzUk;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        private zzb(Status status, FileUploadPreferences fileuploadpreferences)
        {
            zzUi = zzx.this;
            super();
            zzHb = status;
            zzUk = fileuploadpreferences;
        }

    }

    private abstract class zzc extends zzq
    {

        final zzx zzUi;

        protected Result createFailedResult(Status status)
        {
            return zzs(status);
        }

        protected com.google.android.gms.drive.DrivePreferencesApi.FileUploadPreferencesResult zzs(Status status)
        {
            return zzUi. new zzb(status, null);
        }

        public zzc(GoogleApiClient googleapiclient)
        {
            zzUi = zzx.this;
            super(googleapiclient);
        }
    }


    public zzx()
    {
    }

    public PendingResult getFileUploadPreferences(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zza(new zzc(googleapiclient) {

            final zzx zzUi;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zzh(zzUi. new zza(this));
            }

            
            {
                zzUi = zzx.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult setFileUploadPreferences(GoogleApiClient googleapiclient, FileUploadPreferences fileuploadpreferences)
    {
        if (!(fileuploadpreferences instanceof FileUploadPreferencesImpl))
        {
            throw new IllegalArgumentException("Invalid preference value");
        } else
        {
            return googleapiclient.zzb(new zzq.zza(googleapiclient, (FileUploadPreferencesImpl)fileuploadpreferences) {

                final zzx zzUi;
                final FileUploadPreferencesImpl zzUj;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzr1.zzkF().zza(new SetFileUploadPreferencesRequest(zzUj), new zzbl(this));
                }

            
            {
                zzUi = zzx.this;
                zzUj = fileuploadpreferencesimpl;
                super(googleapiclient);
            }
            });
        }
    }
}
