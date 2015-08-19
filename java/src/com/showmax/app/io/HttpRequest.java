// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;

import com.mautilus.lib.common.util.MauLog;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.conn.ConnectTimeoutException;

// Referenced classes of package com.showmax.app.io:
//            HttpResponse

public class HttpRequest
{
    public static final class RequestType extends Enum
    {

        private static final RequestType $VALUES[];
        public static final RequestType DELETE;
        public static final RequestType GET;
        public static final RequestType POST;
        public static final RequestType PUT;

        public static RequestType valueOf(String s)
        {
            return (RequestType)Enum.valueOf(com/showmax/app/io/HttpRequest$RequestType, s);
        }

        public static RequestType[] values()
        {
            return (RequestType[])$VALUES.clone();
        }

        static 
        {
            GET = new RequestType("GET", 0);
            POST = new RequestType("POST", 1);
            PUT = new RequestType("PUT", 2);
            DELETE = new RequestType("DELETE", 3);
            $VALUES = (new RequestType[] {
                GET, POST, PUT, DELETE
            });
        }

        private RequestType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int CONNECTION_TIMEOUT = 15000;
    private final String TAG;
    private String mBaseUrl;
    private HttpURLConnection mConnection;
    private HashMap mParameters;
    private HashMap mRequestProperties;
    private RequestType mRequestType;
    private HttpResponse mResponse;

    public HttpRequest(String s, HashMap hashmap, HashMap hashmap1)
    {
        this(s, hashmap, hashmap1, RequestType.GET);
    }

    public HttpRequest(String s, HashMap hashmap, HashMap hashmap1, RequestType requesttype)
    {
        TAG = com/showmax/app/io/HttpRequest$RequestType.getSimpleName();
        mBaseUrl = s;
        mParameters = hashmap;
        mRequestProperties = hashmap1;
        mRequestType = requesttype;
        mResponse = new HttpResponse();
    }

    private String constructUrlRequest(String s, Map map)
        throws UnsupportedEncodingException
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(s);
        if (map != null && !map.isEmpty())
        {
            stringbuilder.append("?");
            stringbuilder.append(getQueryParams(map));
        }
        return stringbuilder.toString();
    }

    private String getQueryParams(Map map)
        throws UnsupportedEncodingException
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (map != null && !map.isEmpty())
        {
            ArrayList arraylist = new ArrayList(map.keySet());
            int j = arraylist.size();
            for (int i = 0; i < j; i++)
            {
                String s = (String)arraylist.get(i);
                stringbuilder.append(URLEncoder.encode(s, "UTF-8"));
                stringbuilder.append("=");
                stringbuilder.append(URLEncoder.encode((String)map.get(s), "UTF-8"));
                if (i + 1 < j)
                {
                    stringbuilder.append("&");
                }
            }

        }
        return stringbuilder.toString();
    }

    private void setRequestProperties(URLConnection urlconnection, Map map)
    {
        if (map != null)
        {
            map = map.entrySet().iterator();
            do
            {
                if (!map.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
                if (entry.getKey() != null)
                {
                    urlconnection.addRequestProperty((String)entry.getKey(), (String)entry.getValue());
                }
            } while (true);
        }
    }

    public HttpResponse getResponse()
    {
        if (!mRequestType.equals(RequestType.GET)) goto _L2; else goto _L1
_L1:
        Object obj = constructUrlRequest(mBaseUrl, mParameters);
_L7:
        URL url = new URL(((String) (obj)));
        MauLog.d("[HttpRequest]::[getResponse]::[REQUEST %s]", new Object[] {
            url.toString()
        });
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        obj = null;
        obj6 = null;
        obj7 = null;
        obj8 = null;
        obj1 = null;
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        mConnection = (HttpURLConnection)url.openConnection();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        mConnection.setRequestMethod(mRequestType.toString());
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        mConnection.setConnectTimeout(15000);
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        mConnection.setReadTimeout(15000);
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        setRequestProperties(mConnection, mRequestProperties);
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        if (!mRequestType.equals(RequestType.POST))
        {
            break MISSING_BLOCK_LABEL_406;
        }
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        mConnection.setDoOutput(true);
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        mConnection.setDoInput(true);
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        Object obj9 = mConnection.getOutputStream();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        Object obj10 = new BufferedWriter(new OutputStreamWriter(((OutputStream) (obj9)), "UTF-8"));
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        ((BufferedWriter) (obj10)).write(getQueryParams(mParameters));
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        ((BufferedWriter) (obj10)).flush();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        ((BufferedWriter) (obj10)).close();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        ((OutputStream) (obj9)).close();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        int j = mConnection.getResponseCode();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        if (!mRequestType.equals(RequestType.GET)) goto _L4; else goto _L3
_L3:
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        obj = new StringBuffer();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        obj9 = new BufferedReader(new InputStreamReader(mConnection.getInputStream(), "UTF-8"));
_L6:
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        obj10 = ((BufferedReader) (obj9)).readLine();
        if (obj10 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        ((StringBuffer) (obj)).append(((String) (obj10)));
        if (true) goto _L6; else goto _L5
        obj;
        MauLog.e("[HttpRequest]::[getResponse]::[SocketTimeoutException: %s]", new Object[] {
            ((SocketTimeoutException) (obj)).getMessage()
        });
        j = 408;
        mResponse.setErrorMessage(((SocketTimeoutException) (obj)).getMessage());
        int i;
        i = j;
        obj1 = obj2;
        if (mConnection != null)
        {
            mConnection.disconnect();
            obj1 = obj2;
            i = j;
        }
_L8:
        mResponse.setResultCode(i);
        mResponse.setResponse(((String) (obj1)));
        mResponse.setErrorMessage(null);
        return mResponse;
_L2:
        obj = constructUrlRequest(mBaseUrl, null);
          goto _L7
        obj;
_L10:
        MauLog.e("[HttpRequest]::[getResponse]::[UnsupportedEncodingException: %s]", new Object[] {
            ((UnsupportedEncodingException) (obj)).getMessage()
        });
        mResponse.setResultCode(666);
        mResponse.setErrorMessage(((UnsupportedEncodingException) (obj)).getMessage());
        return mResponse;
        obj;
_L9:
        MauLog.e("[HttpRequest]::[getResponse]::[MalformedURLException: %s]", new Object[] {
            ((MalformedURLException) (obj)).getMessage()
        });
        mResponse.setResultCode(666);
        mResponse.setErrorMessage(((MalformedURLException) (obj)).getMessage());
        return mResponse;
_L5:
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        ((BufferedReader) (obj9)).close();
        obj2 = obj1;
        obj3 = obj6;
        obj4 = obj7;
        obj5 = obj8;
        obj = ((StringBuffer) (obj)).toString();
_L4:
        obj2 = obj;
        obj3 = obj;
        obj4 = obj;
        obj5 = obj;
        MauLog.d("[HttpRequest]::[getResponse]::[RESPONSE status %d]::[%s]", new Object[] {
            Integer.valueOf(j), url.toString()
        });
        i = j;
        obj1 = obj;
        if (mConnection != null)
        {
            mConnection.disconnect();
            i = j;
            obj1 = obj;
        }
          goto _L8
        obj;
        MauLog.e("[HttpRequest]::[getResponse]::[ConnectTimeoutException: %s]", new Object[] {
            ((ConnectTimeoutException) (obj)).getMessage()
        });
        j = 408;
        mResponse.setErrorMessage(((ConnectTimeoutException) (obj)).getMessage());
        i = j;
        obj1 = obj3;
        if (mConnection != null)
        {
            mConnection.disconnect();
            i = j;
            obj1 = obj3;
        }
          goto _L8
        obj;
        MauLog.e("[HttpRequest]::[getResponse]::[IOException: %s]", new Object[] {
            ((IOException) (obj)).getMessage()
        });
        j = 666;
        mResponse.setErrorMessage(((IOException) (obj)).getMessage());
        i = j;
        obj1 = obj4;
        if (mConnection != null)
        {
            mConnection.disconnect();
            i = j;
            obj1 = obj4;
        }
          goto _L8
        obj;
        MauLog.e("[HttpRequest]::[getResponse]::[IOException: %s]", new Object[] {
            ((Exception) (obj)).getMessage()
        });
        j = 666;
        mResponse.setErrorMessage(((Exception) (obj)).getMessage());
        i = j;
        obj1 = obj5;
        if (mConnection != null)
        {
            mConnection.disconnect();
            i = j;
            obj1 = obj5;
        }
          goto _L8
        obj;
        if (mConnection != null)
        {
            mConnection.disconnect();
        }
        throw obj;
        obj;
          goto _L9
        obj;
          goto _L10
    }
}
