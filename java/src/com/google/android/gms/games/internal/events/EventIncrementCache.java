// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.events;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class EventIncrementCache
{

    final Object zzahN = new Object();
    private Handler zzahO;
    private boolean zzahP;
    private HashMap zzahQ;
    private int zzahR;

    public EventIncrementCache(Looper looper, int i)
    {
        zzahO = new Handler(looper);
        zzahQ = new HashMap();
        zzahR = i;
    }

    static void zza(EventIncrementCache eventincrementcache)
    {
        eventincrementcache.zzog();
    }

    private void zzog()
    {
        synchronized (zzahN)
        {
            zzahP = false;
            flush();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void flush()
    {
        Object obj = zzahN;
        obj;
        JVM INSTR monitorenter ;
        java.util.Map.Entry entry;
        for (Iterator iterator = zzahQ.entrySet().iterator(); iterator.hasNext(); zzs((String)entry.getKey(), ((AtomicInteger)entry.getValue()).get()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        break MISSING_BLOCK_LABEL_72;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        zzahQ.clear();
        obj;
        JVM INSTR monitorexit ;
    }

    protected abstract void zzs(String s, int i);

    public void zzz(String s, int i)
    {
        Object obj = zzahN;
        obj;
        JVM INSTR monitorenter ;
        AtomicInteger atomicinteger1;
        if (!zzahP)
        {
            zzahP = true;
            zzahO.postDelayed(new Runnable() {

                final EventIncrementCache zzahS;

                public void run()
                {
                    EventIncrementCache.zza(zzahS);
                }

            
            {
                zzahS = EventIncrementCache.this;
                super();
            }
            }, zzahR);
        }
        atomicinteger1 = (AtomicInteger)zzahQ.get(s);
        AtomicInteger atomicinteger;
        atomicinteger = atomicinteger1;
        if (atomicinteger1 != null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        atomicinteger = new AtomicInteger();
        zzahQ.put(s, atomicinteger);
        atomicinteger.addAndGet(i);
        obj;
        JVM INSTR monitorexit ;
        return;
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
    }
}
