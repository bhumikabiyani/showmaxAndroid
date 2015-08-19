// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket.server;


// Referenced classes of package org.java_websocket.server:
//            WebSocketServer

class val.this._cls0
    implements bSocketWorker._cls1
{

    final val.this._cls0 this$1;
    final WebSocketServer val$this$0;

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        Thread.getDefaultUncaughtExceptionHandler().uncaughtException(thread, throwable);
    }

    A()
    {
        this$1 = final_a;
        val$this$0 = WebSocketServer.this;
        super();
    }
}
