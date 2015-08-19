// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.eventbus;


// Referenced classes of package com.showmax.lib.api.io.eventbus:
//            EventBus

class val.event
    implements Runnable
{

    final EventBus this$0;
    final Object val$event;

    public void run()
    {
        post(val$event);
    }

    ()
    {
        this$0 = final_eventbus;
        val$event = Object.this;
        super();
    }
}
