// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.splunk.mint;


// Referenced classes of package com.splunk.mint:
//            DataSaverResponse, NetSenderResponse

public interface MintCallback
{

    public abstract void dataSaverResponse(DataSaverResponse datasaverresponse);

    public abstract void lastBreath(Exception exception);

    public abstract void netSenderResponse(NetSenderResponse netsenderresponse);
}
