// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket.server;

import java.io.IOException;
import java.net.Socket;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import org.java_websocket.SSLSocketChannel2;
import org.java_websocket.WebSocket;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;

public class DefaultSSLWebSocketServerFactory
    implements WebSocketServer.WebSocketServerFactory
{

    protected ExecutorService exec;
    protected SSLContext sslcontext;

    public DefaultSSLWebSocketServerFactory(SSLContext sslcontext1)
    {
        this(sslcontext1, ((ExecutorService) (Executors.newSingleThreadScheduledExecutor())));
    }

    public DefaultSSLWebSocketServerFactory(SSLContext sslcontext1, ExecutorService executorservice)
    {
        if (sslcontext1 == null || executorservice == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            sslcontext = sslcontext1;
            exec = executorservice;
            return;
        }
    }

    public volatile WebSocket createWebSocket(WebSocketAdapter websocketadapter, List list, Socket socket)
    {
        return createWebSocket(websocketadapter, list, socket);
    }

    public volatile WebSocket createWebSocket(WebSocketAdapter websocketadapter, Draft draft, Socket socket)
    {
        return createWebSocket(websocketadapter, draft, socket);
    }

    public WebSocketImpl createWebSocket(WebSocketAdapter websocketadapter, List list, Socket socket)
    {
        return new WebSocketImpl(websocketadapter, list);
    }

    public WebSocketImpl createWebSocket(WebSocketAdapter websocketadapter, Draft draft, Socket socket)
    {
        return new WebSocketImpl(websocketadapter, draft);
    }

    public ByteChannel wrapChannel(SocketChannel socketchannel, SelectionKey selectionkey)
        throws IOException
    {
        SSLEngine sslengine = sslcontext.createSSLEngine();
        sslengine.setUseClientMode(false);
        return new SSLSocketChannel2(socketchannel, sslengine, exec, selectionkey);
    }
}
