// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util.analytics;

import android.os.Handler;
import android.os.HandlerThread;
import com.showmax.lib.api.io.LogApi;
import com.showmax.lib.api.model.log.LogEvent;
import java.util.ArrayList;
import java.util.LinkedList;
import retrofit.RetrofitError;

public class LogEventService
{

    private static final long DEFAULT_SENDING_PERIOD = 2000L;
    private static final boolean LOG = false;
    private static final String TAG = com/showmax/app/util/analytics/LogEventService.getSimpleName();
    private Runnable mDispatchAllLogEventsTask;
    private LinkedList mEventQueue;
    private Handler mLogEventHandler;
    private HandlerThread mPostEventsHandlerThread;

    public LogEventService()
    {
        mDispatchAllLogEventsTask = new Runnable() {

            final LogEventService this$0;

            public void run()
            {
                dispatchAllLogEvents();
                startDispatchAllLogEventsTask();
            }

            
            {
                this$0 = LogEventService.this;
                super();
            }
        };
        mEventQueue = new LinkedList();
        mPostEventsHandlerThread = new HandlerThread(TAG);
        mPostEventsHandlerThread.start();
        mLogEventHandler = new Handler(mPostEventsHandlerThread.getLooper());
        startDispatchAllLogEventsTask();
    }

    private void dispatchAllLogEvents()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        arraylist = new ArrayList(mEventQueue);
        mEventQueue.clear();
        this;
        JVM INSTR monitorexit ;
        if (arraylist.isEmpty())
        {
            break MISSING_BLOCK_LABEL_38;
        }
        LogApi.getInstance().sendLog(arraylist);
        return;
        Object obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
    }

    private void startDispatchAllLogEventsTask()
    {
        mLogEventHandler.postDelayed(mDispatchAllLogEventsTask, 2000L);
    }

    public void sendLogEvent(LogEvent logevent)
    {
        this;
        JVM INSTR monitorenter ;
        mEventQueue.add(logevent);
        this;
        JVM INSTR monitorexit ;
        return;
        logevent;
        this;
        JVM INSTR monitorexit ;
        throw logevent;
    }



}
