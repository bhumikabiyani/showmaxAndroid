// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket.exceptions;


public class IncompleteHandshakeException extends RuntimeException
{

    private static final long serialVersionUID = 0x6db9dfe70a9994e4L;
    private int newsize;

    public IncompleteHandshakeException()
    {
        newsize = 0;
    }

    public IncompleteHandshakeException(int i)
    {
        newsize = i;
    }

    public int getPreferedSize()
    {
        return newsize;
    }
}
