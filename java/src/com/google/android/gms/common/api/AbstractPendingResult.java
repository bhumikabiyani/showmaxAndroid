// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.common.api:
//            PendingResult, Result, Releasable, Status, 
//            ResultCallback

public abstract class AbstractPendingResult
    implements PendingResult
{
    public static class CallbackHandler extends Handler
    {

        public static final int CALLBACK_ON_COMPLETE = 1;
        public static final int CALLBACK_ON_TIMEOUT = 2;

        protected void deliverResultCallback(ResultCallback resultcallback, Result result)
        {
            try
            {
                resultcallback.onResult(result);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ResultCallback resultcallback)
            {
                AbstractPendingResult.zzb(result);
            }
            throw resultcallback;
        }

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                Log.wtf("AbstractPendingResult", "Don't know how to handle this message.");
                return;

            case 1: // '\001'
                message = (Pair)message.obj;
                deliverResultCallback((ResultCallback)((Pair) (message)).first, (Result)((Pair) (message)).second);
                return;

            case 2: // '\002'
                ((AbstractPendingResult)message.obj).zzhS();
                break;
            }
        }

        public void removeTimeoutMessages()
        {
            removeMessages(2);
        }

        public void sendResultCallback(ResultCallback resultcallback, Result result)
        {
            sendMessage(obtainMessage(1, new Pair(resultcallback, result)));
        }

        public void sendTimeoutResultCallback(AbstractPendingResult abstractpendingresult, long l)
        {
            sendMessageDelayed(obtainMessage(2, abstractpendingresult), l);
        }

        public CallbackHandler()
        {
            this(Looper.getMainLooper());
        }

        public CallbackHandler(Looper looper)
        {
            super(looper);
        }
    }


    protected final CallbackHandler mHandler;
    private final Object zzLK;
    private final ArrayList zzLL;
    private ResultCallback zzLM;
    private volatile Result zzLN;
    private volatile boolean zzLO;
    private boolean zzLP;
    private boolean zzLQ;
    private ICancelToken zzLR;
    private final CountDownLatch zzmx;

    protected AbstractPendingResult(Looper looper)
    {
        zzLK = new Object();
        zzmx = new CountDownLatch(1);
        zzLL = new ArrayList();
        mHandler = new CallbackHandler(looper);
    }

    protected AbstractPendingResult(CallbackHandler callbackhandler)
    {
        zzLK = new Object();
        zzmx = new CountDownLatch(1);
        zzLL = new ArrayList();
        mHandler = callbackhandler;
    }

    private void zza(Result result)
    {
        zzLN = result;
        zzLR = null;
        zzmx.countDown();
        result = zzLN.getStatus();
        if (zzLM != null)
        {
            mHandler.removeTimeoutMessages();
            if (!zzLP)
            {
                mHandler.sendResultCallback(zzLM, zzhQ());
            }
        }
        for (Iterator iterator = zzLL.iterator(); iterator.hasNext(); ((PendingResult.BatchCallback)iterator.next()).zzl(result)) { }
        zzLL.clear();
    }

    static void zzb(Result result)
    {
        if (!(result instanceof Releasable))
        {
            break MISSING_BLOCK_LABEL_16;
        }
        ((Releasable)result).release();
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        Log.w("AbstractPendingResult", (new StringBuilder()).append("Unable to release ").append(result).toString(), runtimeexception);
        return;
    }

    private Result zzhQ()
    {
        boolean flag = true;
        Object obj = zzLK;
        obj;
        JVM INSTR monitorenter ;
        Result result;
        if (zzLO)
        {
            flag = false;
        }
        zzx.zza(flag, "Result has already been consumed.");
        zzx.zza(isReady(), "Result is not ready.");
        result = zzLN;
        zzLN = null;
        zzLM = null;
        zzLO = true;
        onResultConsumed();
        return result;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void zzhR()
    {
        synchronized (zzLK)
        {
            if (!isReady())
            {
                setResult(createFailedResult(Status.zzNp));
                zzLQ = true;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void addBatchCallback(PendingResult.BatchCallback batchcallback)
    {
        Object obj;
        boolean flag;
        if (!zzLO)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Result has already been consumed.");
        obj = zzLK;
        obj;
        JVM INSTR monitorenter ;
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_47;
        }
        batchcallback.zzl(zzLN.getStatus());
_L2:
        return;
        zzLL.add(batchcallback);
        if (true) goto _L2; else goto _L1
_L1:
        batchcallback;
        obj;
        JVM INSTR monitorexit ;
        throw batchcallback;
    }

    public final Result await()
    {
        boolean flag1 = true;
        boolean flag;
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "await must not be called on the UI thread");
        if (!zzLO)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Result has already been consumed");
        try
        {
            zzmx.await();
        }
        catch (InterruptedException interruptedexception)
        {
            zzhR();
        }
        zzx.zza(isReady(), "Result is not ready.");
        return zzhQ();
    }

    public final Result await(long l, TimeUnit timeunit)
    {
        boolean flag1 = true;
        boolean flag;
        if (l <= 0L || Looper.myLooper() != Looper.getMainLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "await must not be called on the UI thread when time is greater than zero.");
        if (!zzLO)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Result has already been consumed.");
        try
        {
            if (!zzmx.await(l, timeunit))
            {
                zzhS();
            }
        }
        // Misplaced declaration of an exception variable
        catch (TimeUnit timeunit)
        {
            zzhR();
        }
        zzx.zza(isReady(), "Result is not ready.");
        return zzhQ();
    }

    public void cancel()
    {
label0:
        {
            synchronized (zzLK)
            {
                if (!zzLP && !zzLO)
                {
                    break label0;
                }
            }
            return;
        }
        ICancelToken icanceltoken = zzLR;
        if (icanceltoken == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        try
        {
            zzLR.cancel();
        }
        catch (RemoteException remoteexception) { }
        zzb(zzLN);
        zzLM = null;
        zzLP = true;
        zza(createFailedResult(Status.zzNs));
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected abstract Result createFailedResult(Status status);

    public boolean isCanceled()
    {
        boolean flag;
        synchronized (zzLK)
        {
            flag = zzLP;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final boolean isReady()
    {
        return zzmx.getCount() == 0L;
    }

    protected void onResultConsumed()
    {
    }

    protected final void setCancelToken(ICancelToken icanceltoken)
    {
        synchronized (zzLK)
        {
            zzLR = icanceltoken;
        }
        return;
        icanceltoken;
        obj;
        JVM INSTR monitorexit ;
        throw icanceltoken;
    }

    public final void setResult(Result result)
    {
        boolean flag1;
label0:
        {
            flag1 = true;
            synchronized (zzLK)
            {
                if (!zzLQ && !zzLP)
                {
                    break label0;
                }
                zzb(result);
            }
            return;
        }
        boolean flag;
        if (!isReady())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Results have already been set");
        if (!zzLO)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Result has already been consumed");
        zza(result);
        obj;
        JVM INSTR monitorexit ;
        return;
        result;
        obj;
        JVM INSTR monitorexit ;
        throw result;
    }

    public final void setResultCallback(ResultCallback resultcallback)
    {
label0:
        {
            boolean flag;
            if (!zzLO)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Result has already been consumed.");
            synchronized (zzLK)
            {
                if (!isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_59;
        }
        mHandler.sendResultCallback(resultcallback, zzhQ());
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        resultcallback;
        obj;
        JVM INSTR monitorexit ;
        throw resultcallback;
        zzLM = resultcallback;
          goto _L1
    }

    public final void setResultCallback(ResultCallback resultcallback, long l, TimeUnit timeunit)
    {
label0:
        {
            boolean flag1 = true;
            boolean flag;
            if (!zzLO)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Result has already been consumed.");
            if (mHandler != null)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "CallbackHandler has not been set before calling setResultCallback.");
            synchronized (zzLK)
            {
                if (!isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_87;
        }
        mHandler.sendResultCallback(resultcallback, zzhQ());
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        resultcallback;
        obj;
        JVM INSTR monitorexit ;
        throw resultcallback;
        zzLM = resultcallback;
        mHandler.sendTimeoutResultCallback(this, timeunit.toMillis(l));
          goto _L1
    }

    void zzhS()
    {
        synchronized (zzLK)
        {
            if (!isReady())
            {
                setResult(createFailedResult(Status.zzNr));
                zzLQ = true;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
