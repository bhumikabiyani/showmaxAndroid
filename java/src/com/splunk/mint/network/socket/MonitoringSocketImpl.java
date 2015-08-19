// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.splunk.mint.network.socket;

import com.splunk.mint.Logger;
import com.splunk.mint.Properties;
import com.splunk.mint.network.Counter;
import com.splunk.mint.network.Metric;
import com.splunk.mint.network.MonitorRegistry;
import com.splunk.mint.network.NetLogManager;
import com.splunk.mint.network.io.InputStreamMonitor;
import com.splunk.mint.network.io.InputStreamMonitorKitKat;
import com.splunk.mint.network.io.OutputStreamMonitor;
import com.splunk.mint.network.util.Delegator;
import com.splunk.mint.network.util.ReflectionUtil;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MonitoringSocketImpl extends SocketImpl
{

    public static final String ENCAPSULATED_SOCKET_IMPL = "java.net.PlainSocketImpl";
    private static final String HTTP_CLASSES[] = {
        "HttpClient", "URLConnection", "HttpsURLConnectionImpl", "HttpURLConnectionImpl"
    };
    private static final String SYSTEM_PACKAGES[] = {
        "android", "java", "org.apache", "splunk", "libcore"
    };
    private final Delegator delegator = new Delegator(this, java/net/SocketImpl, "java.net.PlainSocketImpl");
    private final boolean http;
    private InputStreamMonitor mInputStreamMonitor;
    private InputStreamMonitorKitKat mInputStreamMonitorKitKat;
    private OutputStreamMonitor mOutputStreamMonitor;
    private final String method;
    private String name;
    private String protocol;
    private boolean readingDone;
    private final MonitorRegistry registry;
    private long startTime;

    public MonitoringSocketImpl(MonitorRegistry monitorregistry)
    {
        mInputStreamMonitor = null;
        mOutputStreamMonitor = null;
        mInputStreamMonitorKitKat = null;
        protocol = "NA";
        readingDone = false;
        method = ReflectionUtil.extractCallingMethod(SYSTEM_PACKAGES);
        http = ReflectionUtil.callingClassAnyOf(HTTP_CLASSES);
        registry = monitorregistry;
    }

    private void createActionEventFromCollectedStats(ArrayList arraylist, HashMap hashmap, HashMap hashmap1, long l, String s, String s1)
    {
        String s2 = "";
        Object obj = s2;
        if (hashmap == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        int i;
        boolean flag;
        long l1;
        long l2;
        try
        {
            obj = (String)((List)hashmap.get("Host")).get(0);
        }
        catch (Exception exception)
        {
            exception = s2;
        }
        hashmap = (new StringBuilder()).append(((String) (obj))).append((String)((List)hashmap.get("splk-host2")).get(0)).toString();
        obj = hashmap;
_L4:
        if (s != null)
        {
            obj = s1;
        }
        flag = false;
        i = ((flag) ? 1 : 0);
        if (hashmap1 != null)
        {
            try
            {
                i = Integer.valueOf((String)((List)hashmap1.get("splk-statuscode")).get(0)).intValue();
            }
            // Misplaced declaration of an exception variable
            catch (HashMap hashmap)
            {
                i = ((flag) ? 1 : 0);
            }
        }
        hashmap = Long.valueOf(0L);
        l1 = 0L;
        s1 = arraylist.iterator();
        arraylist = hashmap;
        do
        {
            if (!s1.hasNext())
            {
                break;
            }
            hashmap = (Metric)s1.next();
            if (hashmap instanceof Counter)
            {
                if (((Counter)hashmap).getName().endsWith("-bytes-out"))
                {
                    arraylist = (Long)hashmap.getValue();
                } else
                if (((Counter)hashmap).getName().endsWith("-bytes-in"))
                {
                    l1 = ((Long)hashmap.getValue()).longValue();
                }
            }
        } while (true);
        l2 = Long.valueOf((String)((List)hashmap1.get("Content-Length")).get(0)).longValue();
        l1 = l2;
_L2:
        NetLogManager.getInstance().logNetworkRequest(((String) (obj)), protocol, startTime, l, i, arraylist.longValue(), l1, s);
        return;
        hashmap;
        Logger.logInfo("Could not read the Content-Length HTTP header value");
        if (true) goto _L2; else goto _L1
_L1:
        hashmap;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void setProtocolFromPort(int i)
    {
        if (i == 80)
        {
            protocol = "HTTP";
        } else
        if (i == 443)
        {
            protocol = "HTTPS";
            return;
        }
    }

    protected void accept(SocketImpl socketimpl)
        throws IOException
    {
        try
        {
            delegator.invoke(new Object[] {
                socketimpl
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SocketImpl socketimpl)
        {
            createActionEventFromCollectedStats(registry.getMetricsForName(name), null, null, System.currentTimeMillis(), socketimpl.getMessage(), name);
        }
    }

    protected int available()
        throws IOException
    {
        int i;
        try
        {
            i = ((Integer)delegator.invoke(new Object[0])).intValue();
        }
        catch (Exception exception)
        {
            return 0;
        }
        return i;
    }

    protected void bind(InetAddress inetaddress, int i)
        throws IOException
    {
        name = inetaddress.getHostName();
        try
        {
            delegator.invoke(new Object[] {
                inetaddress, Integer.valueOf(i)
            });
        }
        // Misplaced declaration of an exception variable
        catch (InetAddress inetaddress)
        {
            createActionEventFromCollectedStats(registry.getMetricsForName(name), null, null, System.currentTimeMillis(), inetaddress.getMessage(), name);
        }
        startTime = System.currentTimeMillis();
    }

    protected void close()
        throws IOException
    {
        try
        {
            delegator.invoke(new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            Logger.logError((new StringBuilder()).append("Error closing socket impl: ").append(exception.getMessage()).toString());
        }
    }

    protected void connect(String s, int i)
        throws IOException
    {
        name = s;
        try
        {
            delegator.invoke(new Object[] {
                s, Integer.valueOf(i)
            });
        }
        catch (Exception exception)
        {
            createActionEventFromCollectedStats(registry.getMetricsForName(name), null, null, System.currentTimeMillis(), exception.getMessage(), s);
        }
        startTime = System.currentTimeMillis();
        setProtocolFromPort(i);
    }

    protected void connect(InetAddress inetaddress, int i)
        throws IOException
    {
        name = inetaddress.getHostName();
        try
        {
            delegator.delegateTo("connect", new Class[] {
                java/net/InetAddress, Integer.TYPE
            }).invoke(new Object[] {
                inetaddress, Integer.valueOf(i)
            });
        }
        // Misplaced declaration of an exception variable
        catch (InetAddress inetaddress)
        {
            createActionEventFromCollectedStats(registry.getMetricsForName(name), null, null, System.currentTimeMillis(), inetaddress.getMessage(), name);
        }
        startTime = System.currentTimeMillis();
        setProtocolFromPort(i);
    }

    protected void connect(SocketAddress socketaddress, int i)
        throws IOException
    {
        if (socketaddress instanceof InetSocketAddress)
        {
            InetSocketAddress inetsocketaddress = (InetSocketAddress)socketaddress;
            name = inetsocketaddress.getHostName();
            setProtocolFromPort(inetsocketaddress.getPort());
        } else
        {
            name = socketaddress.toString();
        }
        try
        {
            delegator.invoke(new Object[] {
                socketaddress, Integer.valueOf(i)
            });
        }
        // Misplaced declaration of an exception variable
        catch (SocketAddress socketaddress)
        {
            createActionEventFromCollectedStats(registry.getMetricsForName(name), null, null, System.currentTimeMillis(), socketaddress.getMessage(), name);
        }
        startTime = System.currentTimeMillis();
    }

    protected void create(boolean flag)
        throws IOException
    {
        try
        {
            delegator.invoke(new Object[] {
                Boolean.valueOf(flag)
            });
            return;
        }
        catch (Exception exception)
        {
            createActionEventFromCollectedStats(registry.getMetricsForName(name), null, null, System.currentTimeMillis(), exception.getMessage(), name);
        }
    }

    protected FileDescriptor getFileDescriptor()
    {
        return (FileDescriptor)delegator.invoke(new Object[0]);
    }

    protected InetAddress getInetAddress()
    {
        return (InetAddress)delegator.invoke(new Object[0]);
    }

    protected InputStream getInputStream()
        throws IOException
    {
        InputStream inputstream = (InputStream)delegator.invoke(new Object[0]);
        if (Properties.isKitKat)
        {
            if (mInputStreamMonitorKitKat == null)
            {
                mInputStreamMonitorKitKat = new InputStreamMonitorKitKat(name, registry, inputstream, this);
            }
            return mInputStreamMonitorKitKat;
        }
        if (mInputStreamMonitor == null)
        {
            mInputStreamMonitor = new InputStreamMonitor(name, registry, inputstream, this);
        }
        return mInputStreamMonitor;
    }

    protected int getLocalPort()
    {
        return ((Integer)delegator.invoke(new Object[0])).intValue();
    }

    public String getMethod()
    {
        return method;
    }

    public Object getOption(int i)
        throws SocketException
    {
        return delegator.invoke(new Object[] {
            Integer.valueOf(i)
        });
    }

    protected OutputStream getOutputStream()
        throws IOException
    {
        OutputStream outputstream = (OutputStream)delegator.invoke(new Object[0]);
        if (mOutputStreamMonitor == null)
        {
            mOutputStreamMonitor = new OutputStreamMonitor(name, registry, outputstream);
        }
        return mOutputStreamMonitor;
    }

    protected int getPort()
    {
        return ((Integer)delegator.invoke(new Object[0])).intValue();
    }

    public boolean isHttp()
    {
        return http;
    }

    protected void listen(int i)
        throws IOException
    {
        try
        {
            delegator.invoke(new Object[] {
                Integer.valueOf(i)
            });
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void readingDone()
    {
        if (!readingDone)
        {
            readingDone = true;
            if (Properties.isKitKat)
            {
                if (mOutputStreamMonitor != null && mInputStreamMonitorKitKat != null)
                {
                    createActionEventFromCollectedStats(registry.getMetricsForName(name), mOutputStreamMonitor.getHeaders(), mInputStreamMonitorKitKat.getHeaders(), System.currentTimeMillis(), null, null);
                }
            } else
            if (mOutputStreamMonitor != null && mInputStreamMonitor != null)
            {
                createActionEventFromCollectedStats(registry.getMetricsForName(name), mOutputStreamMonitor.getHeaders(), mInputStreamMonitor.getHeaders(), System.currentTimeMillis(), null, null);
                return;
            }
        }
    }

    protected void sendUrgentData(int i)
        throws IOException
    {
        try
        {
            delegator.invoke(new Object[] {
                Integer.valueOf(i)
            });
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void setOption(int i, Object obj)
        throws SocketException
    {
        try
        {
            delegator.invoke(new Object[] {
                Integer.valueOf(i), obj
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
    }

    protected void setPerformancePreferences(int i, int j, int k)
    {
        try
        {
            delegator.invoke(new Object[] {
                Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(k)
            });
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    protected void shutdownInput()
        throws IOException
    {
        if (Properties.isKitKat)
        {
            if (mInputStreamMonitorKitKat != null)
            {
                mInputStreamMonitorKitKat.close();
            }
        } else
        if (mInputStreamMonitor != null)
        {
            mInputStreamMonitor.close();
        }
        try
        {
            delegator.invoke(new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    protected void shutdownOutput()
        throws IOException
    {
        if (mOutputStreamMonitor != null)
        {
            mOutputStreamMonitor.close();
        }
        try
        {
            delegator.invoke(new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    protected boolean supportsUrgentData()
    {
        return ((Boolean)delegator.invoke(new Object[0])).booleanValue();
    }

}
