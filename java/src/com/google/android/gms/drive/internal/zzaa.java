// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.zzc;
import com.google.android.gms.drive.events.zzf;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.internal:
//            OnEventResponse, zzw

public class zzaa extends zzai.zza
{
    private static class zza extends Handler
    {

        private final Context mContext;

        public void handleMessage(Message message)
        {
            Object obj;
            switch (message.what)
            {
            default:
                zzw.zze(mContext, "EventCallback", "Don't know how to handle this event");
                return;

            case 1: // '\001'
                obj = (Pair)message.obj;
                break;
            }
            message = (zzc)((Pair) (obj)).first;
            obj = (DriveEvent)((Pair) (obj)).second;
            switch (((DriveEvent) (obj)).getType())
            {
            default:
                zzw.zzr("EventCallback", (new StringBuilder()).append("Unexpected event: ").append(obj).toString());
                return;

            case 1: // '\001'
                ((ChangeListener)message).onChange((ChangeEvent)obj);
                return;

            case 2: // '\002'
                ((CompletionListener)message).onCompletion((CompletionEvent)obj);
                return;

            case 3: // '\003'
                ((zzf)message).zzkD();
                break;
            }
        }

        public void zza(zzc zzc1, DriveEvent driveevent)
        {
            sendMessage(obtainMessage(1, new Pair(zzc1, driveevent)));
        }

        private zza(Looper looper, Context context)
        {
            super(looper);
            mContext = context;
        }

    }


    private final int zzTe;
    private final zzc zzUp;
    private final zza zzUq;
    private final List zzUr = new ArrayList();

    public zzaa(Looper looper, Context context, int i, zzc zzc1)
    {
        zzTe = i;
        zzUp = zzc1;
        zzUq = new zza(looper, context);
    }

    public void zzbJ(int i)
    {
        zzUr.add(Integer.valueOf(i));
    }

    public boolean zzbK(int i)
    {
        return zzUr.contains(Integer.valueOf(i));
    }

    public void zzc(OnEventResponse oneventresponse)
        throws RemoteException
    {
        oneventresponse = oneventresponse.zzkQ();
        boolean flag;
        if (zzTe == oneventresponse.getType())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzN(flag);
        zzx.zzN(zzUr.contains(Integer.valueOf(oneventresponse.getType())));
        zzUq.zza(zzUp, oneventresponse);
    }
}
