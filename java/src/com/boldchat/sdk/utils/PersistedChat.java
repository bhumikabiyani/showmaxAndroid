// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.boldchat.sdk.utils;

import com.boldchat.visitor.api.Account;
import com.boldchat.visitor.api.Chat;

public class PersistedChat
{

    Account account;
    Chat chat;
    String status;

    public PersistedChat()
    {
        status = null;
    }

    public Account getAccount()
    {
        return account;
    }

    public Chat getChat()
    {
        return chat;
    }

    public String getStatus()
    {
        return status;
    }

    public void setAccount(Account account1)
    {
        account = account1;
    }

    public void setChat(Chat chat1)
    {
        chat = chat1;
    }

    public void setStatus(String s)
    {
        status = s;
    }
}
