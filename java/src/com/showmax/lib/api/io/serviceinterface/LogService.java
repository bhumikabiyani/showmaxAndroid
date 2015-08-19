// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.serviceinterface;

import java.util.List;
import retrofit.Callback;
import retrofit.client.Response;

public interface LogService
{

    public abstract Response sendEvent(List list);

    public abstract void sendEvent(List list, Callback callback);
}
