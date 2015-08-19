// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import java.util.concurrent.TimeUnit;

public interface HistoryApi
{
    public static class ViewIntentBuilder
    {

        private final Context mContext;
        private long zzON;
        private final DataType zzYo;
        private DataSource zzYp;
        private long zzYq;
        private String zzYr;

        private Intent zzi(Intent intent)
        {
            if (zzYr != null)
            {
                Intent intent1 = (new Intent(intent)).setPackage(zzYr);
                ResolveInfo resolveinfo = mContext.getPackageManager().resolveActivity(intent1, 0);
                if (resolveinfo != null)
                {
                    intent = resolveinfo.activityInfo.name;
                    intent1.setComponent(new ComponentName(zzYr, intent));
                    return intent1;
                }
            }
            return intent;
        }

        public Intent build()
        {
            boolean flag1 = true;
            Intent intent;
            boolean flag;
            if (zzON > 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Start time must be set");
            if (zzYq > zzON)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "End time must be set and after start time");
            intent = new Intent("vnd.google.fitness.VIEW");
            intent.setType(DataType.getMimeType(zzYp.getDataType()));
            intent.putExtra("vnd.google.fitness.start_time", zzON);
            intent.putExtra("vnd.google.fitness.end_time", zzYq);
            zzc.zza(zzYp, intent, "vnd.google.fitness.data_source");
            return zzi(intent);
        }

        public ViewIntentBuilder setDataSource(DataSource datasource)
        {
            zzx.zzb(datasource.getDataType().equals(zzYo), "Data source %s is not for the data type %s", new Object[] {
                datasource, zzYo
            });
            zzYp = datasource;
            return this;
        }

        public ViewIntentBuilder setPreferredApplication(String s)
        {
            zzYr = s;
            return this;
        }

        public ViewIntentBuilder setTimeInterval(long l, long l1, TimeUnit timeunit)
        {
            zzON = timeunit.toMillis(l);
            zzYq = timeunit.toMillis(l1);
            return this;
        }

        public ViewIntentBuilder(Context context, DataType datatype)
        {
            mContext = context;
            zzYo = datatype;
        }
    }


    public abstract PendingResult deleteData(GoogleApiClient googleapiclient, DataDeleteRequest datadeleterequest);

    public abstract PendingResult insertData(GoogleApiClient googleapiclient, DataSet dataset);

    public abstract PendingResult readData(GoogleApiClient googleapiclient, DataReadRequest datareadrequest);
}
