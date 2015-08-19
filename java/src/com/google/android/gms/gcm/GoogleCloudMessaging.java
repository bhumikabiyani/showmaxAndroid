// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class GoogleCloudMessaging
{

    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String MESSAGE_TYPE_DELETED = "deleted_messages";
    public static final String MESSAGE_TYPE_MESSAGE = "gcm";
    public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";
    public static final String REGISTRATION_ID = "registration_id";
    private static String zzakT = null;
    public static int zzakU = 0x4c4b40;
    public static int zzakV = 0x632ea0;
    public static int zzakW = 0x6acfc0;
    static GoogleCloudMessaging zzakX;
    private static final AtomicInteger zzala = new AtomicInteger(1);
    private PendingIntent zzakY;
    private Map zzakZ;
    private final BlockingQueue zzalb = new LinkedBlockingQueue();
    final Messenger zzalc = new Messenger(new Handler(Looper.getMainLooper()) {

        final GoogleCloudMessaging zzald;

        public void handleMessage(Message message)
        {
            if (message == null || !(message.obj instanceof Intent))
            {
                Log.w("GCM", "Dropping invalid message");
            }
            message = (Intent)message.obj;
            if ("com.google.android.c2dm.intent.REGISTRATION".equals(message.getAction()))
            {
                GoogleCloudMessaging.zza(zzald).add(message);
            } else
            if (!GoogleCloudMessaging.zza(zzald, message))
            {
                message.setPackage(GoogleCloudMessaging.zzb(zzald).getPackageName());
                GoogleCloudMessaging.zzb(zzald).sendBroadcast(message);
                return;
            }
        }

            
            {
                zzald = GoogleCloudMessaging.this;
                super(looper);
            }
    });
    private Context zzlN;

    public GoogleCloudMessaging()
    {
        zzakZ = Collections.synchronizedMap(new HashMap());
    }

    public static GoogleCloudMessaging getInstance(Context context)
    {
        com/google/android/gms/gcm/GoogleCloudMessaging;
        JVM INSTR monitorenter ;
        if (zzakX == null)
        {
            zzakX = new GoogleCloudMessaging();
            zzakX.zzlN = context.getApplicationContext();
        }
        context = zzakX;
        com/google/android/gms/gcm/GoogleCloudMessaging;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public static String zzZ(Context context)
    {
        if (zzakT == null)
        {
            zzakT = "com.google.android.gms";
        }
        return zzakT;
    }

    private String zza(Intent intent, String s)
        throws IOException
    {
        if (intent == null)
        {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        s = intent.getStringExtra(s);
        if (s != null)
        {
            return s;
        }
        intent = intent.getStringExtra("error");
        if (intent != null)
        {
            throw new IOException(intent);
        } else
        {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
    }

    static BlockingQueue zza(GoogleCloudMessaging googlecloudmessaging)
    {
        return googlecloudmessaging.zzalb;
    }

    private void zza(String s, String s1, long l, int i, Bundle bundle)
        throws IOException
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Missing 'to'");
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        if (bundle != null)
        {
            intent.putExtras(bundle);
        }
        zzk(intent);
        intent.setPackage(zzZ(zzlN));
        intent.putExtra("google.to", s);
        intent.putExtra("google.message_id", s1);
        intent.putExtra("google.ttl", Long.toString(l));
        intent.putExtra("google.delay", Integer.toString(i));
        zzlN.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    static boolean zza(GoogleCloudMessaging googlecloudmessaging, Intent intent)
    {
        return googlecloudmessaging.zzj(intent);
    }

    public static int zzaa(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        int i;
        try
        {
            i = packagemanager.getPackageInfo(zzZ(context), 0).versionCode;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return -1;
        }
        return i;
    }

    static Context zzb(GoogleCloudMessaging googlecloudmessaging)
    {
        return googlecloudmessaging.zzlN;
    }

    private boolean zzj(Intent intent)
    {
        String s = intent.getStringExtra("In-Reply-To");
        Object obj = s;
        if (s == null)
        {
            obj = s;
            if (intent.hasExtra("error"))
            {
                obj = intent.getStringExtra("google.message_id");
            }
        }
        if (obj != null)
        {
            obj = (Handler)zzakZ.remove(obj);
            if (obj != null)
            {
                Message message = Message.obtain();
                message.obj = intent;
                return ((Handler) (obj)).sendMessage(message);
            }
        }
        return false;
    }

    private String zzpd()
    {
        return (new StringBuilder()).append("google.rpc").append(String.valueOf(zzala.getAndIncrement())).toString();
    }

    private Intent zzt(Bundle bundle)
        throws IOException
    {
        if (Looper.getMainLooper() == Looper.myLooper())
        {
            throw new IOException("MAIN_THREAD");
        }
        if (zzaa(zzlN) < 0)
        {
            throw new IOException("Google Play Services missing");
        }
        Bundle bundle1 = bundle;
        if (bundle == null)
        {
            bundle1 = new Bundle();
        }
        bundle = new Intent("com.google.android.c2dm.intent.REGISTER");
        bundle.setPackage(zzZ(zzlN));
        zzk(bundle);
        bundle.putExtra("google.message_id", zzpd());
        bundle.putExtras(bundle1);
        bundle.putExtra("google.messenger", zzalc);
        zzlN.startService(bundle);
        try
        {
            bundle = (Intent)zzalb.poll(30000L, TimeUnit.MILLISECONDS);
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            throw new IOException(bundle.getMessage());
        }
        return bundle;
    }

    public void close()
    {
        zzpe();
    }

    public String getMessageType(Intent intent)
    {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction()))
        {
            intent = null;
        } else
        {
            String s = intent.getStringExtra("message_type");
            intent = s;
            if (s == null)
            {
                return "gcm";
            }
        }
        return intent;
    }

    public transient String register(String as[])
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        as = zzd(as);
        Bundle bundle = new Bundle();
        bundle.putString("sender", as);
        as = zza(zzt(bundle), "registration_id");
        this;
        JVM INSTR monitorexit ;
        return as;
        as;
        throw as;
    }

    public void send(String s, String s1, long l, Bundle bundle)
        throws IOException
    {
        zza(s, s1, l, -1, bundle);
    }

    public void send(String s, String s1, Bundle bundle)
        throws IOException
    {
        send(s, s1, -1L, bundle);
    }

    public void unregister()
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (Looper.getMainLooper() == Looper.myLooper())
        {
            throw new IOException("MAIN_THREAD");
        }
        break MISSING_BLOCK_LABEL_26;
        Object obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        Intent intent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
        intent.setPackage(zzZ(zzlN));
        intent.putExtra("google.messenger", zzalc);
        zzk(intent);
        zzlN.startService(intent);
        Intent intent1 = (Intent)zzalb.poll(30000L, TimeUnit.MILLISECONDS);
        zza(intent1, "unregistered");
        this;
        JVM INSTR monitorexit ;
        return;
        intent1;
        throw new IOException(intent1.getMessage());
    }

    transient String zzd(String as[])
    {
        if (as == null || as.length == 0)
        {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringbuilder = new StringBuilder(as[0]);
        for (int i = 1; i < as.length; i++)
        {
            stringbuilder.append(',').append(as[i]);
        }

        return stringbuilder.toString();
    }

    void zzk(Intent intent)
    {
        this;
        JVM INSTR monitorenter ;
        if (zzakY == null)
        {
            Intent intent1 = new Intent();
            intent1.setPackage("com.google.example.invalidpackage");
            zzakY = PendingIntent.getBroadcast(zzlN, 0, intent1, 0);
        }
        intent.putExtra("app", zzakY);
        this;
        JVM INSTR monitorexit ;
        return;
        intent;
        throw intent;
    }

    void zzpe()
    {
        this;
        JVM INSTR monitorenter ;
        if (zzakY != null)
        {
            zzakY.cancel();
            zzakY = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
