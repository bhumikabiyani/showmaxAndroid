// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.java_websocket;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

// Referenced classes of package org.java_websocket:
//            WrappedByteChannel

public class SSLSocketChannel2
    implements ByteChannel, WrappedByteChannel
{

    static final boolean $assertionsDisabled;
    protected static ByteBuffer emptybuffer = ByteBuffer.allocate(0);
    protected int bufferallocations;
    protected ExecutorService exec;
    protected ByteBuffer inCrypt;
    protected ByteBuffer inData;
    protected ByteBuffer outCrypt;
    protected SSLEngineResult readEngineResult;
    protected SelectionKey selectionKey;
    protected SocketChannel socketChannel;
    protected SSLEngine sslEngine;
    protected List tasks;
    protected SSLEngineResult writeEngineResult;

    public SSLSocketChannel2(SocketChannel socketchannel, SSLEngine sslengine, ExecutorService executorservice, SelectionKey selectionkey)
        throws IOException
    {
        bufferallocations = 0;
        if (socketchannel == null || sslengine == null || executorservice == null)
        {
            throw new IllegalArgumentException("parameter must not be null");
        }
        socketChannel = socketchannel;
        sslEngine = sslengine;
        exec = executorservice;
        socketchannel = new SSLEngineResult(javax.net.ssl.SSLEngineResult.Status.BUFFER_UNDERFLOW, sslengine.getHandshakeStatus(), 0, 0);
        writeEngineResult = socketchannel;
        readEngineResult = socketchannel;
        tasks = new ArrayList(3);
        if (selectionkey != null)
        {
            selectionkey.interestOps(selectionkey.interestOps() | 4);
            selectionKey = selectionkey;
        }
        createBuffers(sslengine.getSession());
        socketChannel.write(wrap(emptybuffer));
        processHandshake();
    }

    private void consumeFutureUninterruptible(Future future)
    {
        boolean flag = false;
_L2:
        future.get();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        Thread.currentThread().interrupt();
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        flag = true;
        continue; /* Loop/switch isn't completed */
        future;
        throw new RuntimeException(future);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean isHandShakeComplete()
    {
        javax.net.ssl.SSLEngineResult.HandshakeStatus handshakestatus = sslEngine.getHandshakeStatus();
        return handshakestatus == javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED || handshakestatus == javax.net.ssl.SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
    }

    private void processHandshake()
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Object obj1;
        obj = sslEngine.getHandshakeStatus();
        obj1 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
        if (obj != obj1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (tasks.isEmpty()) goto _L4; else goto _L3
_L3:
        obj = tasks.iterator();
_L7:
        if (!((Iterator) (obj)).hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (Future)((Iterator) (obj)).next();
        if (!((Future) (obj1)).isDone()) goto _L6; else goto _L5
_L5:
        ((Iterator) (obj)).remove();
        if (true) goto _L7; else goto _L4
        Exception exception;
        exception;
        throw exception;
_L6:
        if (!isBlocking()) goto _L1; else goto _L8
_L8:
        consumeFutureUninterruptible(((Future) (obj1)));
          goto _L1
_L4:
label0:
        {
            if (sslEngine.getHandshakeStatus() != javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_UNWRAP)
            {
                break label0;
            }
            if (!isBlocking() || readEngineResult.getStatus() == javax.net.ssl.SSLEngineResult.Status.BUFFER_UNDERFLOW)
            {
                inCrypt.compact();
                if (socketChannel.read(inCrypt) == -1)
                {
                    throw new IOException("connection closed unexpectedly by peer");
                }
                inCrypt.flip();
            }
            inData.compact();
            unwrap();
            if (readEngineResult.getHandshakeStatus() != javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED)
            {
                break label0;
            }
            createBuffers(sslEngine.getSession());
        }
          goto _L1
label1:
        {
            consumeDelegatedTasks();
            if (!tasks.isEmpty() && sslEngine.getHandshakeStatus() != javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_WRAP)
            {
                break label1;
            }
            socketChannel.write(wrap(emptybuffer));
            if (writeEngineResult.getHandshakeStatus() != javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED)
            {
                break label1;
            }
            createBuffers(sslEngine.getSession());
        }
          goto _L1
        if (!$assertionsDisabled && sslEngine.getHandshakeStatus() == javax.net.ssl.SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING)
        {
            throw new AssertionError();
        }
        bufferallocations = 1;
          goto _L1
    }

    private int readRemaining(ByteBuffer bytebuffer)
        throws SSLException
    {
        if (!inData.hasRemaining()) goto _L2; else goto _L1
_L1:
        int i = transfereTo(inData, bytebuffer);
_L4:
        return i;
_L2:
        int j;
        if (!inData.hasRemaining())
        {
            inData.clear();
        }
        if (!inCrypt.hasRemaining())
        {
            break; /* Loop/switch isn't completed */
        }
        unwrap();
        j = transfereTo(inData, bytebuffer);
        i = j;
        if (j > 0) goto _L4; else goto _L3
_L3:
        return 0;
    }

    private int transfereTo(ByteBuffer bytebuffer, ByteBuffer bytebuffer1)
    {
        int j = bytebuffer.remaining();
        int i = bytebuffer1.remaining();
        if (j > i)
        {
            int k = Math.min(j, i);
            i = 0;
            do
            {
                j = k;
                if (i >= k)
                {
                    break;
                }
                bytebuffer1.put(bytebuffer.get());
                i++;
            } while (true);
        } else
        {
            bytebuffer1.put(bytebuffer);
        }
        return j;
    }

    private ByteBuffer unwrap()
        throws SSLException
    {
        this;
        JVM INSTR monitorenter ;
        ByteBuffer bytebuffer;
        int i;
        do
        {
            i = inData.remaining();
            readEngineResult = sslEngine.unwrap(inCrypt, inData);
        } while (readEngineResult.getStatus() == javax.net.ssl.SSLEngineResult.Status.OK && (i != inData.remaining() || sslEngine.getHandshakeStatus() == javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_UNWRAP));
        inData.flip();
        bytebuffer = inData;
        this;
        JVM INSTR monitorexit ;
        return bytebuffer;
        Exception exception;
        exception;
        throw exception;
    }

    private ByteBuffer wrap(ByteBuffer bytebuffer)
        throws SSLException
    {
        this;
        JVM INSTR monitorenter ;
        outCrypt.compact();
        writeEngineResult = sslEngine.wrap(bytebuffer, outCrypt);
        outCrypt.flip();
        bytebuffer = outCrypt;
        this;
        JVM INSTR monitorexit ;
        return bytebuffer;
        bytebuffer;
        throw bytebuffer;
    }

    public void close()
        throws IOException
    {
        sslEngine.closeOutbound();
        sslEngine.getSession().invalidate();
        if (socketChannel.isOpen())
        {
            socketChannel.write(wrap(emptybuffer));
        }
        socketChannel.close();
        exec.shutdownNow();
    }

    public SelectableChannel configureBlocking(boolean flag)
        throws IOException
    {
        return socketChannel.configureBlocking(flag);
    }

    public boolean connect(SocketAddress socketaddress)
        throws IOException
    {
        return socketChannel.connect(socketaddress);
    }

    protected void consumeDelegatedTasks()
    {
        do
        {
            Runnable runnable = sslEngine.getDelegatedTask();
            if (runnable != null)
            {
                tasks.add(exec.submit(runnable));
            } else
            {
                return;
            }
        } while (true);
    }

    protected void createBuffers(SSLSession sslsession)
    {
        int i;
        int j;
        i = sslsession.getApplicationBufferSize();
        j = sslsession.getPacketBufferSize();
        if (inData != null) goto _L2; else goto _L1
_L1:
        inData = ByteBuffer.allocate(i);
        outCrypt = ByteBuffer.allocate(j);
        inCrypt = ByteBuffer.allocate(j);
_L4:
        inData.rewind();
        inData.flip();
        inCrypt.rewind();
        inCrypt.flip();
        outCrypt.rewind();
        outCrypt.flip();
        bufferallocations = bufferallocations + 1;
        return;
_L2:
        if (inData.capacity() != i)
        {
            inData = ByteBuffer.allocate(i);
        }
        if (outCrypt.capacity() != j)
        {
            outCrypt = ByteBuffer.allocate(j);
        }
        if (inCrypt.capacity() != j)
        {
            inCrypt = ByteBuffer.allocate(j);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean finishConnect()
        throws IOException
    {
        return socketChannel.finishConnect();
    }

    public boolean isBlocking()
    {
        return socketChannel.isBlocking();
    }

    public boolean isConnected()
    {
        return socketChannel.isConnected();
    }

    public boolean isInboundDone()
    {
        return sslEngine.isInboundDone();
    }

    public boolean isNeedRead()
    {
        return inData.hasRemaining() || inCrypt.hasRemaining() && readEngineResult.getStatus() != javax.net.ssl.SSLEngineResult.Status.BUFFER_UNDERFLOW && readEngineResult.getStatus() != javax.net.ssl.SSLEngineResult.Status.CLOSED;
    }

    public boolean isNeedWrite()
    {
        return outCrypt.hasRemaining() || !isHandShakeComplete();
    }

    public boolean isOpen()
    {
        return socketChannel.isOpen();
    }

    public int read(ByteBuffer bytebuffer)
        throws IOException
    {
        int i = 0;
        if (bytebuffer.hasRemaining()) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        if (isHandShakeComplete())
        {
            break; /* Loop/switch isn't completed */
        }
        if (isBlocking())
        {
            for (; !isHandShakeComplete(); processHandshake()) { }
            break; /* Loop/switch isn't completed */
        }
        processHandshake();
        if (!isHandShakeComplete()) goto _L1; else goto _L3
_L3:
        if (bufferallocations <= 1)
        {
            createBuffers(sslEngine.getSession());
        }
        int k = readRemaining(bytebuffer);
        i = k;
        if (k == 0)
        {
            if (!$assertionsDisabled && inData.position() != 0)
            {
                throw new AssertionError();
            }
            inData.clear();
            if (!inCrypt.hasRemaining())
            {
                inCrypt.clear();
            } else
            {
                inCrypt.compact();
            }
            if ((isBlocking() || readEngineResult.getStatus() == javax.net.ssl.SSLEngineResult.Status.BUFFER_UNDERFLOW) && socketChannel.read(inCrypt) == -1)
            {
                return -1;
            }
            inCrypt.flip();
            unwrap();
            int j = transfereTo(inData, bytebuffer);
            if (j == 0 && isBlocking())
            {
                return read(bytebuffer);
            } else
            {
                return j;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public int readMore(ByteBuffer bytebuffer)
        throws SSLException
    {
        return readRemaining(bytebuffer);
    }

    public Socket socket()
    {
        return socketChannel.socket();
    }

    public int write(ByteBuffer bytebuffer)
        throws IOException
    {
        if (!isHandShakeComplete())
        {
            processHandshake();
            return 0;
        }
        if (bufferallocations <= 1)
        {
            createBuffers(sslEngine.getSession());
        }
        return socketChannel.write(wrap(bytebuffer));
    }

    public void writeMore()
        throws IOException
    {
        write(outCrypt);
    }

    static 
    {
        boolean flag;
        if (!org/java_websocket/SSLSocketChannel2.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
