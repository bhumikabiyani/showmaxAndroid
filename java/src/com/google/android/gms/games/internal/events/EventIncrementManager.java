// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.events;

import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.google.android.gms.games.internal.events:
//            EventIncrementCache

public abstract class EventIncrementManager
{

    private final AtomicReference zzahT = new AtomicReference();

    public EventIncrementManager()
    {
    }

    public void flush()
    {
        EventIncrementCache eventincrementcache = (EventIncrementCache)zzahT.get();
        if (eventincrementcache != null)
        {
            eventincrementcache.flush();
        }
    }

    protected abstract EventIncrementCache zznM();

    public void zzp(String s, int i)
    {
        EventIncrementCache eventincrementcache1 = (EventIncrementCache)zzahT.get();
        EventIncrementCache eventincrementcache = eventincrementcache1;
        if (eventincrementcache1 == null)
        {
            EventIncrementCache eventincrementcache2 = zznM();
            eventincrementcache = eventincrementcache2;
            if (!zzahT.compareAndSet(null, eventincrementcache2))
            {
                eventincrementcache = (EventIncrementCache)zzahT.get();
            }
        }
        eventincrementcache.zzz(s, i);
    }
}
