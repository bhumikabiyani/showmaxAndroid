// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket.server;

import java.io.IOException;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedByInterruptException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.java_websocket.SocketChannelIOHelper;
import org.java_websocket.WebSocket;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketFactory;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.WrappedByteChannel;
import org.java_websocket.drafts.Draft;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.framing.Framedata;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshakeBuilder;

// Referenced classes of package org.java_websocket.server:
//            DefaultWebSocketServerFactory

public abstract class WebSocketServer extends WebSocketAdapter
    implements Runnable
{
    public static interface WebSocketServerFactory
        extends WebSocketFactory
    {

        public abstract WebSocketImpl createWebSocket(WebSocketAdapter websocketadapter, List list, Socket socket);

        public abstract WebSocketImpl createWebSocket(WebSocketAdapter websocketadapter, Draft draft, Socket socket);

        public abstract ByteChannel wrapChannel(SocketChannel socketchannel, SelectionKey selectionkey)
            throws IOException;
    }

    public class WebSocketWorker extends Thread
    {

        static final boolean $assertionsDisabled;
        private BlockingQueue iqueue;
        final WebSocketServer this$0;

        public void put(WebSocketImpl websocketimpl)
            throws InterruptedException
        {
            iqueue.put(websocketimpl);
        }

        public void run()
        {
            Object obj = null;
_L2:
            Object obj1 = (WebSocketImpl)iqueue.take();
            obj = obj1;
            ByteBuffer bytebuffer = (ByteBuffer)((WebSocketImpl) (obj1)).inQueue.poll();
            obj = obj1;
            if (!$assertionsDisabled && bytebuffer == null)
            {
                obj = obj1;
                try
                {
                    throw new AssertionError();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1)
                {
                    handleFatal(((WebSocket) (obj)), ((Exception) (obj1)));
                }
                break; /* Loop/switch isn't completed */
            }
            ((WebSocketImpl) (obj1)).decode(bytebuffer);
            obj = obj1;
            pushBuffer(bytebuffer);
            obj = obj1;
            if (true) goto _L2; else goto _L1
_L1:
            return;
            Exception exception;
            exception;
            obj = obj1;
            pushBuffer(bytebuffer);
            obj = obj1;
            throw exception;
        }

        static 
        {
            boolean flag;
            if (!org/java_websocket/server/WebSocketServer.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            $assertionsDisabled = flag;
        }

        public WebSocketWorker()
        {
            this$0 = WebSocketServer.this;
            super();
            iqueue = new LinkedBlockingQueue();
            setName((new StringBuilder()).append("WebSocketWorker-").append(getId()).toString());
            setUncaughtExceptionHandler(new _cls1());
        }
    }


    static final boolean $assertionsDisabled;
    public static int DECODERS = Runtime.getRuntime().availableProcessors();
    private final InetSocketAddress address;
    private BlockingQueue buffers;
    private final Collection connections;
    private List decoders;
    private List drafts;
    private List iqueue;
    private volatile AtomicBoolean isclosed;
    private int queueinvokes;
    private AtomicInteger queuesize;
    private Selector selector;
    private Thread selectorthread;
    private ServerSocketChannel server;
    private WebSocketServerFactory wsf;

    public WebSocketServer()
        throws UnknownHostException
    {
        this(new InetSocketAddress(80), DECODERS, null);
    }

    public WebSocketServer(InetSocketAddress inetsocketaddress)
    {
        this(inetsocketaddress, DECODERS, null);
    }

    public WebSocketServer(InetSocketAddress inetsocketaddress, int i)
    {
        this(inetsocketaddress, i, null);
    }

    public WebSocketServer(InetSocketAddress inetsocketaddress, int i, List list)
    {
        this(inetsocketaddress, i, list, ((Collection) (new HashSet())));
    }

    public WebSocketServer(InetSocketAddress inetsocketaddress, int i, List list, Collection collection)
    {
        isclosed = new AtomicBoolean(false);
        queueinvokes = 0;
        queuesize = new AtomicInteger(0);
        wsf = new DefaultWebSocketServerFactory();
        if (inetsocketaddress == null || i < 1 || collection == null)
        {
            throw new IllegalArgumentException("address and connectionscontainer must not be null and you need at least 1 decoder");
        }
        if (list == null)
        {
            drafts = Collections.emptyList();
        } else
        {
            drafts = list;
        }
        address = inetsocketaddress;
        connections = collection;
        iqueue = new LinkedList();
        decoders = new ArrayList(i);
        buffers = new LinkedBlockingQueue();
        for (int j = 0; j < i; j++)
        {
            inetsocketaddress = new WebSocketWorker();
            decoders.add(inetsocketaddress);
            inetsocketaddress.start();
        }

    }

    public WebSocketServer(InetSocketAddress inetsocketaddress, List list)
    {
        this(inetsocketaddress, DECODERS, list);
    }

    private Socket getSocket(WebSocket websocket)
    {
        return ((SocketChannel)((WebSocketImpl)websocket).key.channel()).socket();
    }

    private void handleFatal(WebSocket websocket, Exception exception)
    {
        onError(websocket, exception);
        try
        {
            stop();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebSocket websocket)
        {
            onError(null, websocket);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebSocket websocket)
        {
            Thread.currentThread().interrupt();
        }
        onError(null, websocket);
    }

    private void handleIOException(SelectionKey selectionkey, WebSocket websocket, IOException ioexception)
    {
        if (websocket != null)
        {
            websocket.closeConnection(1006, ioexception.getMessage());
        } else
        if (selectionkey != null)
        {
            selectionkey = selectionkey.channel();
            if (selectionkey != null && selectionkey.isOpen())
            {
                try
                {
                    selectionkey.close();
                }
                // Misplaced declaration of an exception variable
                catch (SelectionKey selectionkey) { }
                if (WebSocketImpl.DEBUG)
                {
                    System.out.println((new StringBuilder()).append("Connection closed because of").append(ioexception).toString());
                    return;
                }
            }
        }
    }

    private void pushBuffer(ByteBuffer bytebuffer)
        throws InterruptedException
    {
        if (buffers.size() > queuesize.intValue())
        {
            return;
        } else
        {
            buffers.put(bytebuffer);
            return;
        }
    }

    private void queue(WebSocketImpl websocketimpl)
        throws InterruptedException
    {
        if (websocketimpl.workerThread == null)
        {
            websocketimpl.workerThread = (WebSocketWorker)decoders.get(queueinvokes % decoders.size());
            queueinvokes = queueinvokes + 1;
        }
        websocketimpl.workerThread.put(websocketimpl);
    }

    private ByteBuffer takeBuffer()
        throws InterruptedException
    {
        return (ByteBuffer)buffers.take();
    }

    protected boolean addConnection(WebSocket websocket)
    {
        if (isclosed.get())
        {
            break MISSING_BLOCK_LABEL_55;
        }
        Collection collection = connections;
        collection;
        JVM INSTR monitorenter ;
        boolean flag = connections.add(websocket);
        if ($assertionsDisabled || flag)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        throw new AssertionError();
        websocket;
        collection;
        JVM INSTR monitorexit ;
        throw websocket;
        collection;
        JVM INSTR monitorexit ;
        return flag;
        websocket.close(1001);
        return true;
    }

    protected void allocateBuffers(WebSocket websocket)
        throws InterruptedException
    {
        if (queuesize.get() >= decoders.size() * 2 + 1)
        {
            return;
        } else
        {
            queuesize.incrementAndGet();
            buffers.put(createBuffer());
            return;
        }
    }

    public Collection connections()
    {
        return connections;
    }

    public ByteBuffer createBuffer()
    {
        return ByteBuffer.allocate(WebSocketImpl.RCVBUF);
    }

    public InetSocketAddress getAddress()
    {
        return address;
    }

    public List getDraft()
    {
        return Collections.unmodifiableList(drafts);
    }

    protected String getFlashSecurityPolicy()
    {
        return (new StringBuilder()).append("<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"").append(getPort()).append("\" /></cross-domain-policy>").toString();
    }

    public InetSocketAddress getLocalSocketAddress(WebSocket websocket)
    {
        return (InetSocketAddress)getSocket(websocket).getLocalSocketAddress();
    }

    public int getPort()
    {
        int j = getAddress().getPort();
        int i = j;
        if (j == 0)
        {
            i = j;
            if (server != null)
            {
                i = server.socket().getLocalPort();
            }
        }
        return i;
    }

    public InetSocketAddress getRemoteSocketAddress(WebSocket websocket)
    {
        return (InetSocketAddress)getSocket(websocket).getRemoteSocketAddress();
    }

    public final WebSocketFactory getWebSocketFactory()
    {
        return wsf;
    }

    public abstract void onClose(WebSocket websocket, int i, String s, boolean flag);

    public void onCloseInitiated(WebSocket websocket, int i, String s)
    {
    }

    public void onClosing(WebSocket websocket, int i, String s, boolean flag)
    {
    }

    protected boolean onConnect(SelectionKey selectionkey)
    {
        return true;
    }

    public abstract void onError(WebSocket websocket, Exception exception);

    public void onFragment(WebSocket websocket, Framedata framedata)
    {
    }

    public abstract void onMessage(WebSocket websocket, String s);

    public void onMessage(WebSocket websocket, ByteBuffer bytebuffer)
    {
    }

    public abstract void onOpen(WebSocket websocket, ClientHandshake clienthandshake);

    public final void onWebsocketClose(WebSocket websocket, int i, String s, boolean flag)
    {
        selector.wakeup();
        if (removeConnection(websocket))
        {
            onClose(websocket, i, s, flag);
        }
        try
        {
            releaseBuffers(websocket);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebSocket websocket)
        {
            Thread.currentThread().interrupt();
        }
        return;
        s;
        try
        {
            releaseBuffers(websocket);
        }
        // Misplaced declaration of an exception variable
        catch (WebSocket websocket)
        {
            Thread.currentThread().interrupt();
        }
        throw s;
    }

    public void onWebsocketCloseInitiated(WebSocket websocket, int i, String s)
    {
        onCloseInitiated(websocket, i, s);
    }

    public void onWebsocketClosing(WebSocket websocket, int i, String s, boolean flag)
    {
        onClosing(websocket, i, s, flag);
    }

    public final void onWebsocketError(WebSocket websocket, Exception exception)
    {
        onError(websocket, exception);
    }

    public ServerHandshakeBuilder onWebsocketHandshakeReceivedAsServer(WebSocket websocket, Draft draft, ClientHandshake clienthandshake)
        throws InvalidDataException
    {
        return super.onWebsocketHandshakeReceivedAsServer(websocket, draft, clienthandshake);
    }

    public final void onWebsocketMessage(WebSocket websocket, String s)
    {
        onMessage(websocket, s);
    }

    public final void onWebsocketMessage(WebSocket websocket, ByteBuffer bytebuffer)
    {
        onMessage(websocket, bytebuffer);
    }

    public void onWebsocketMessageFragment(WebSocket websocket, Framedata framedata)
    {
        onFragment(websocket, framedata);
    }

    public final void onWebsocketOpen(WebSocket websocket, Handshakedata handshakedata)
    {
        if (addConnection(websocket))
        {
            onOpen(websocket, (ClientHandshake)handshakedata);
        }
    }

    public final void onWriteDemand(WebSocket websocket)
    {
        websocket = (WebSocketImpl)websocket;
        try
        {
            ((WebSocketImpl) (websocket)).key.interestOps(5);
        }
        catch (CancelledKeyException cancelledkeyexception)
        {
            ((WebSocketImpl) (websocket)).outQueue.clear();
        }
        selector.wakeup();
    }

    protected void releaseBuffers(WebSocket websocket)
        throws InterruptedException
    {
    }

    protected boolean removeConnection(WebSocket websocket)
    {
        Collection collection = connections;
        collection;
        JVM INSTR monitorenter ;
        boolean flag = connections.remove(websocket);
        if ($assertionsDisabled || flag)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        throw new AssertionError();
        websocket;
        collection;
        JVM INSTR monitorexit ;
        throw websocket;
        collection;
        JVM INSTR monitorexit ;
        if (isclosed.get() && connections.size() == 0)
        {
            selectorthread.interrupt();
        }
        return flag;
    }

    public void run()
    {
        this;
        JVM INSTR monitorenter ;
        if (selectorthread != null)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getName()).append(" can only be started once.").toString());
        }
        break MISSING_BLOCK_LABEL_48;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        selectorthread = Thread.currentThread();
        if (!isclosed.get())
        {
            break MISSING_BLOCK_LABEL_68;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        this;
        JVM INSTR monitorexit ;
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Iterator iterator;
        selectorthread.setName((new StringBuilder()).append("WebsocketSelector").append(selectorthread.getId()).toString());
        boolean flag;
        try
        {
            server = ServerSocketChannel.open();
            server.configureBlocking(false);
            ServerSocket serversocket = server.socket();
            serversocket.setReceiveBufferSize(WebSocketImpl.RCVBUF);
            serversocket.bind(address);
            selector = Selector.open();
            server.register(selector, server.validOps());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleFatal(null, ((Exception) (obj)));
            return;
        }
_L18:
        flag = selectorthread.isInterrupted();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_1132;
        }
        obj4 = null;
        obj3 = null;
        obj5 = null;
        obj1 = null;
        obj = obj5;
        obj2 = obj4;
        selector.select();
        obj = obj5;
        obj2 = obj4;
        iterator = selector.selectedKeys().iterator();
_L4:
        obj = obj1;
        obj2 = obj3;
        obj4 = obj1;
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        obj = obj1;
        obj2 = obj3;
        obj5 = (SelectionKey)iterator.next();
        obj3 = obj5;
        obj = obj1;
        obj2 = obj5;
        if (!((SelectionKey) (obj5)).isValid()) goto _L4; else goto _L3
_L3:
        obj = obj1;
        obj2 = obj5;
        if (!((SelectionKey) (obj5)).isAcceptable())
        {
            break MISSING_BLOCK_LABEL_507;
        }
        obj = obj1;
        obj2 = obj5;
        if (onConnect(((SelectionKey) (obj5))))
        {
            break MISSING_BLOCK_LABEL_335;
        }
        obj = obj1;
        obj2 = obj5;
        ((SelectionKey) (obj5)).cancel();
        obj3 = obj5;
          goto _L4
        obj;
        continue; /* Loop/switch isn't completed */
        obj = obj1;
        obj2 = obj5;
        obj3 = server.accept();
        obj = obj1;
        obj2 = obj5;
        ((SocketChannel) (obj3)).configureBlocking(false);
        obj = obj1;
        obj2 = obj5;
        obj4 = wsf.createWebSocket(this, drafts, ((SocketChannel) (obj3)).socket());
        obj = obj1;
        obj2 = obj5;
        obj4.key = ((SocketChannel) (obj3)).register(selector, 1, obj4);
        obj = obj1;
        obj2 = obj5;
        obj4.channel = wsf.wrapChannel(((SocketChannel) (obj3)), ((WebSocketImpl) (obj4)).key);
        obj = obj1;
        obj2 = obj5;
        iterator.remove();
        obj = obj1;
        obj2 = obj5;
        allocateBuffers(((WebSocket) (obj4)));
        obj3 = obj5;
          goto _L4
        obj;
        if (decoders != null)
        {
            for (obj = decoders.iterator(); ((Iterator) (obj)).hasNext(); ((WebSocketWorker)((Iterator) (obj)).next()).interrupt()) { }
        }
        break MISSING_BLOCK_LABEL_1086;
        obj4 = obj1;
        obj = obj1;
        obj2 = obj5;
        if (!((SelectionKey) (obj5)).isReadable()) goto _L6; else goto _L5
_L5:
        obj = obj1;
        obj2 = obj5;
        obj1 = (WebSocketImpl)((SelectionKey) (obj5)).attachment();
        obj = obj1;
        obj2 = obj5;
        obj3 = takeBuffer();
        if (!SocketChannelIOHelper.read(((ByteBuffer) (obj3)), ((WebSocketImpl) (obj1)), ((WebSocketImpl) (obj1)).channel)) goto _L8; else goto _L7
_L7:
        if (!((ByteBuffer) (obj3)).hasRemaining()) goto _L10; else goto _L9
_L9:
        ((WebSocketImpl) (obj1)).inQueue.put(obj3);
        queue(((WebSocketImpl) (obj1)));
        iterator.remove();
        obj4 = obj1;
        if (!(((WebSocketImpl) (obj1)).channel instanceof WrappedByteChannel)) goto _L6; else goto _L11
_L11:
        obj4 = obj1;
        if (!((WrappedByteChannel)((WebSocketImpl) (obj1)).channel).isNeedRead()) goto _L6; else goto _L12
_L12:
        iqueue.add(obj1);
        obj4 = obj1;
_L6:
        obj1 = obj4;
        obj3 = obj5;
        obj = obj4;
        obj2 = obj5;
        if (!((SelectionKey) (obj5)).isWritable()) goto _L4; else goto _L13
_L13:
        obj = obj4;
        obj2 = obj5;
        obj4 = (WebSocketImpl)((SelectionKey) (obj5)).attachment();
        obj1 = obj4;
        obj3 = obj5;
        obj = obj4;
        obj2 = obj5;
        if (!SocketChannelIOHelper.batch(((WebSocketImpl) (obj4)), ((WebSocketImpl) (obj4)).channel)) goto _L4; else goto _L14
_L14:
        obj1 = obj4;
        obj3 = obj5;
        obj = obj4;
        obj2 = obj5;
        if (!((SelectionKey) (obj5)).isValid()) goto _L4; else goto _L15
_L15:
        obj = obj4;
        obj2 = obj5;
        ((SelectionKey) (obj5)).interestOps(1);
        obj1 = obj4;
        obj3 = obj5;
          goto _L4
_L16:
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_753;
        }
        ((SelectionKey) (obj2)).cancel();
        handleIOException(((SelectionKey) (obj2)), ((WebSocket) (obj)), ((IOException) (obj1)));
        continue; /* Loop/switch isn't completed */
        obj;
        handleFatal(null, ((Exception) (obj)));
        if (decoders != null)
        {
            for (obj = decoders.iterator(); ((Iterator) (obj)).hasNext(); ((WebSocketWorker)((Iterator) (obj)).next()).interrupt()) { }
        }
        break MISSING_BLOCK_LABEL_1196;
_L10:
        pushBuffer(((ByteBuffer) (obj3)));
        obj4 = obj1;
          goto _L6
        obj4;
        obj = obj1;
        obj2 = obj5;
        pushBuffer(((ByteBuffer) (obj3)));
        obj = obj1;
        obj2 = obj5;
        throw obj4;
        obj;
        if (decoders != null)
        {
            for (obj = decoders.iterator(); ((Iterator) (obj)).hasNext(); ((WebSocketWorker)((Iterator) (obj)).next()).interrupt()) { }
        }
        break MISSING_BLOCK_LABEL_1109;
_L8:
        pushBuffer(((ByteBuffer) (obj3)));
        obj4 = obj1;
          goto _L6
        obj;
        if (decoders != null)
        {
            for (obj1 = decoders.iterator(); ((Iterator) (obj1)).hasNext(); ((WebSocketWorker)((Iterator) (obj1)).next()).interrupt()) { }
        }
        break MISSING_BLOCK_LABEL_1219;
_L2:
        obj = obj4;
        obj2 = obj3;
        if (iqueue.isEmpty())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = obj4;
        obj2 = obj3;
        obj4 = (WebSocketImpl)iqueue.remove(0);
        obj = obj4;
        obj2 = obj3;
        obj5 = (WrappedByteChannel)((WebSocketImpl) (obj4)).channel;
        obj = obj4;
        obj2 = obj3;
        obj1 = takeBuffer();
        if (SocketChannelIOHelper.readMore(((ByteBuffer) (obj1)), ((WebSocketImpl) (obj4)), ((WrappedByteChannel) (obj5))))
        {
            iqueue.add(obj4);
        }
        if (!((ByteBuffer) (obj1)).hasRemaining())
        {
            break MISSING_BLOCK_LABEL_1078;
        }
        ((WebSocketImpl) (obj4)).inQueue.put(obj1);
        queue(((WebSocketImpl) (obj4)));
          goto _L2
        IOException ioexception1;
        ioexception1;
        obj = obj4;
        obj2 = obj3;
        pushBuffer(((ByteBuffer) (obj1)));
        obj = obj4;
        obj2 = obj3;
        try
        {
            throw ioexception1;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
          goto _L16
        pushBuffer(((ByteBuffer) (obj1)));
          goto _L2
        if (server != null)
        {
            try
            {
                server.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                onError(null, ((Exception) (obj)));
            }
            return;
        }
        break MISSING_BLOCK_LABEL_1245;
          goto _L16
        if (server != null)
        {
            try
            {
                server.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                onError(null, ((Exception) (obj)));
            }
            return;
        }
        break MISSING_BLOCK_LABEL_1245;
        if (decoders != null)
        {
            for (obj = decoders.iterator(); ((Iterator) (obj)).hasNext(); ((WebSocketWorker)((Iterator) (obj)).next()).interrupt()) { }
        }
        if (server != null)
        {
            try
            {
                server.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                onError(null, ((Exception) (obj)));
            }
            return;
        }
        break MISSING_BLOCK_LABEL_1245;
        if (server != null)
        {
            try
            {
                server.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                onError(null, ((Exception) (obj)));
            }
            return;
        }
        break MISSING_BLOCK_LABEL_1245;
        if (server != null)
        {
            try
            {
                server.close();
            }
            catch (IOException ioexception)
            {
                onError(null, ioexception);
            }
        }
        throw obj;
        return;
        if (true) goto _L18; else goto _L17
_L17:
    }

    public final void setWebSocketFactory(WebSocketServerFactory websocketserverfactory)
    {
        wsf = websocketserverfactory;
    }

    public void start()
    {
        if (selectorthread != null)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getName()).append(" can only be started once.").toString());
        } else
        {
            (new Thread(this)).start();
            return;
        }
    }

    public void stop()
        throws IOException, InterruptedException
    {
        stop(0);
    }

    public void stop(int i)
        throws InterruptedException
    {
        if (!isclosed.compareAndSet(false, true))
        {
            return;
        }
        Object obj1 = connections;
        obj1;
        JVM INSTR monitorenter ;
        Object obj = new ArrayList(connections);
        obj1;
        JVM INSTR monitorexit ;
        for (obj1 = ((List) (obj)).iterator(); ((Iterator) (obj1)).hasNext(); ((WebSocket)((Iterator) (obj1)).next()).close(1001)) { }
          goto _L1
        obj;
_L3:
        obj1;
        JVM INSTR monitorexit ;
        throw obj;
_L1:
        this;
        JVM INSTR monitorenter ;
        if (selectorthread != null)
        {
            if (Thread.currentThread() == selectorthread);
            if (selectorthread != Thread.currentThread())
            {
                if (((List) (obj)).size() > 0)
                {
                    selectorthread.join(i);
                }
                selectorthread.interrupt();
                selectorthread.join();
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        if (true) goto _L3; else goto _L2
_L2:
    }

    static 
    {
        boolean flag;
        if (!org/java_websocket/server/WebSocketServer.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }



    // Unreferenced inner class org/java_websocket/server/WebSocketServer$WebSocketWorker$1

/* anonymous class */
    class WebSocketWorker._cls1
        implements Thread.UncaughtExceptionHandler
    {

        final WebSocketWorker this$1;
        final WebSocketServer val$this$0;

        public void uncaughtException(Thread thread, Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(thread, throwable);
        }

            
            {
                this$1 = final_websocketworker;
                this$0 = WebSocketServer.this;
                super();
            }
    }

}
