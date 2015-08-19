// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.eventbus;

import android.os.Handler;
import android.os.Looper;
import com.squareup.otto.Bus;

public class EventBus extends Bus
{

    private static EventBus sInstance;
    private final Handler mainThread = new Handler(Looper.getMainLooper());

    private EventBus()
    {
    }

    public static EventBus getInstance()
    {
        if (sInstance == null)
        {
            sInstance = new EventBus();
        }
        return sInstance;
    }

    public void post(final Object event)
    {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            super.post(event);
            return;
        } else
        {
            mainThread.post(new Runnable() {

                final EventBus this$0;
                final Object val$event;

                public void run()
                {
                    post(event);
                }

            
            {
                this$0 = EventBus.this;
                event = obj;
                super();
            }
            });
            return;
        }
    }

    public void post(final Object event, long l)
    {
        mainThread.postDelayed(new Runnable() {

            final EventBus this$0;
            final Object val$event;

            public void run()
            {
                post(event);
            }

            
            {
                this$0 = EventBus.this;
                event = obj;
                super();
            }
        }, l);
    }
}
