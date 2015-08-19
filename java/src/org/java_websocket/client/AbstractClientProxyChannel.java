// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket.client;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import org.java_websocket.AbstractWrappedByteChannel;

public abstract class AbstractClientProxyChannel extends AbstractWrappedByteChannel
{

    protected final ByteBuffer proxyHandshake;

    public AbstractClientProxyChannel(ByteChannel bytechannel)
    {
        super(bytechannel);
        try
        {
            proxyHandshake = ByteBuffer.wrap(buildHandShake().getBytes("ASCII"));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ByteChannel bytechannel)
        {
            throw new RuntimeException(bytechannel);
        }
    }

    public abstract String buildHandShake();

    public int write(ByteBuffer bytebuffer)
        throws IOException
    {
        if (!proxyHandshake.hasRemaining())
        {
            return super.write(bytebuffer);
        } else
        {
            return super.write(proxyHandshake);
        }
    }
}
