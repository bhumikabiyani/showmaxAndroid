// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket;

import java.net.Socket;
import java.util.List;
import org.java_websocket.drafts.Draft;

// Referenced classes of package org.java_websocket:
//            WebSocketAdapter, WebSocket

public interface WebSocketFactory
{

    public abstract WebSocket createWebSocket(WebSocketAdapter websocketadapter, List list, Socket socket);

    public abstract WebSocket createWebSocket(WebSocketAdapter websocketadapter, Draft draft, Socket socket);
}
