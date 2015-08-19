// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.util.concurrent.BlockingQueue;
import org.java_websocket.drafts.Draft;

// Referenced classes of package org.java_websocket:
//            WebSocketImpl, WrappedByteChannel

public class SocketChannelIOHelper
{

    public SocketChannelIOHelper()
    {
    }

    public static boolean batch(WebSocketImpl websocketimpl, ByteChannel bytechannel)
        throws IOException
    {
        ByteBuffer bytebuffer = (ByteBuffer)websocketimpl.outQueue.peek();
        WrappedByteChannel wrappedbytechannel = null;
        Object obj = bytebuffer;
        if (bytebuffer == null)
        {
            obj = wrappedbytechannel;
            if (bytechannel instanceof WrappedByteChannel)
            {
                wrappedbytechannel = (WrappedByteChannel)bytechannel;
                obj = wrappedbytechannel;
                if (wrappedbytechannel.isNeedWrite())
                {
                    wrappedbytechannel.writeMore();
                    obj = wrappedbytechannel;
                }
            }
        } else
        {
            ByteBuffer bytebuffer1;
            do
            {
                bytechannel.write(((ByteBuffer) (obj)));
                if (((ByteBuffer) (obj)).remaining() > 0)
                {
                    return false;
                }
                websocketimpl.outQueue.poll();
                bytebuffer1 = (ByteBuffer)websocketimpl.outQueue.peek();
                obj = bytebuffer1;
            } while (bytebuffer1 != null);
            obj = wrappedbytechannel;
        }
        if (!websocketimpl.outQueue.isEmpty() || !websocketimpl.isFlushAndClose() || websocketimpl.getDraft().getRole() != WebSocket.Role.SERVER) goto _L2; else goto _L1
_L1:
        websocketimpl;
        JVM INSTR monitorenter ;
        websocketimpl.closeConnection();
        websocketimpl;
        JVM INSTR monitorexit ;
_L2:
        return obj == null || !((WrappedByteChannel)bytechannel).isNeedWrite();
        bytechannel;
        websocketimpl;
        JVM INSTR monitorexit ;
        throw bytechannel;
    }

    public static boolean read(ByteBuffer bytebuffer, WebSocketImpl websocketimpl, ByteChannel bytechannel)
        throws IOException
    {
        bytebuffer.clear();
        int i = bytechannel.read(bytebuffer);
        bytebuffer.flip();
        if (i == -1)
        {
            websocketimpl.eot();
        } else
        if (i != 0)
        {
            return true;
        }
        return false;
    }

    public static boolean readMore(ByteBuffer bytebuffer, WebSocketImpl websocketimpl, WrappedByteChannel wrappedbytechannel)
        throws IOException
    {
        bytebuffer.clear();
        int i = wrappedbytechannel.readMore(bytebuffer);
        bytebuffer.flip();
        if (i == -1)
        {
            websocketimpl.eot();
            return false;
        } else
        {
            return wrappedbytechannel.isNeedRead();
        }
    }
}
