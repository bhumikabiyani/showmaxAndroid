// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.splunk.mint.network.io;

import com.splunk.mint.network.Counter;
import com.splunk.mint.network.MonitorRegistry;
import com.splunk.mint.network.socket.MonitoringSocketImpl;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public final class InputStreamMonitorKitKat extends InputStream
{

    private static final String IN_POSTFIX = "-bytes-in";
    private static final int MAX_POSSIBLE_HEADER_LENGTH = 50;
    private StringBuffer body;
    private List chars;
    boolean contentLengthFound;
    private final Counter counter;
    private boolean finishedReadingHeaders;
    HashMap headers;
    MonitoringSocketImpl monSocIm;
    private final InputStream original;
    boolean statusCodeFound;

    public InputStreamMonitorKitKat(String s, MonitorRegistry monitorregistry, InputStream inputstream, MonitoringSocketImpl monitoringsocketimpl)
    {
        finishedReadingHeaders = false;
        statusCodeFound = false;
        contentLengthFound = false;
        headers = new HashMap(2);
        original = inputstream;
        counter = new Counter((new StringBuilder()).append(s).append("-bytes-in").toString());
        chars = new ArrayList();
        body = new StringBuffer();
        monSocIm = monitoringsocketimpl;
        finishedReadingHeaders = false;
        monitorregistry.add(counter);
    }

    private void updateBody()
    {
        byte abyte0[] = new byte[chars.size()];
        for (int i = 0; i < abyte0.length; i++)
        {
            abyte0[i] = ((Byte)chars.get(i)).byteValue();
        }

        chars.clear();
        body.append(new String(abyte0));
        if (body.toString().contains("\r\n\r\n"))
        {
            finishedReadingHeaders = true;
            tryToReadHeaders();
        }
    }

    public void close()
        throws IOException
    {
        original.close();
    }

    public HashMap getHeaders()
    {
        return headers;
    }

    public int read()
        throws IOException
    {
        int i = original.read();
        if (i > -1)
        {
            counter.inc();
        }
        if (!finishedReadingHeaders)
        {
            chars.add(Byte.valueOf((byte)i));
            updateBody();
        }
        return i;
    }

    public int read(byte abyte0[])
        throws IOException
    {
        int j = original.read(abyte0);
        if (j > -1)
        {
            counter.inc(j);
        }
        if (!finishedReadingHeaders)
        {
            for (int i = 0; i < abyte0.length; i++)
            {
                chars.add(Byte.valueOf(abyte0[i]));
            }

            updateBody();
        }
        return j;
    }

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        int k = original.read(abyte0, i, j);
        if (k > -1)
        {
            counter.inc(k);
        }
        if (!finishedReadingHeaders)
        {
            for (; i < j; i++)
            {
                chars.add(Byte.valueOf(abyte0[i]));
            }

            updateBody();
        }
        return k;
    }

    public void tryToReadHeaders()
    {
        BufferedReader bufferedreader = new BufferedReader(new StringReader(body.toString()));
_L2:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        int i;
        if (statusCodeFound || !s.contains("HTTP/"))
        {
            break MISSING_BLOCK_LABEL_98;
        }
        i = s.length();
        if (i >= 50)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        IOException ioexception;
        String s2;
        boolean flag;
        try
        {
            String s1 = s.split(" ")[1].trim();
            headers.put("splk-statuscode", Arrays.asList(new String[] {
                s1
            }));
            statusCodeFound = true;
        }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception1) { }
        if (contentLengthFound || !s.contains(":") || s.length() >= 50)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = s.indexOf(":");
        if (i <= -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        s2 = s.substring(0, i).trim();
        flag = s2.equals("Content-Length");
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            s = s.substring(i + 1, s.length()).trim();
            headers.put(s2, Arrays.asList(new String[] {
                s
            }));
            contentLengthFound = true;
        }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception) { }
        if (!statusCodeFound) goto _L2; else goto _L1
_L1:
        flag = contentLengthFound;
        if (!flag) goto _L2; else goto _L3
_L3:
        if (monSocIm != null)
        {
            monSocIm.readingDone();
        }
        return;
        ioexception;
        ioexception.printStackTrace();
        if (true) goto _L3; else goto _L4
_L4:
    }
}
