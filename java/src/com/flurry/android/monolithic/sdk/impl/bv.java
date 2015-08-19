// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.avro.protocol.v6.AdRequest;
import com.flurry.android.impl.ads.avro.protocol.v6.AdResponse;
import com.flurry.android.impl.ads.avro.protocol.v6.SdkLogRequest;
import com.flurry.android.impl.ads.avro.protocol.v6.SdkLogResponse;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ly, ja, iz, nr, 
//            nu, iv, ns, md, 
//            lr

public class bv
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/bv.getSimpleName();
    private static ly b;

    public bv()
    {
        b = new ly();
    }

    private nu a(nu nu1, String s, Class class1, Class class2)
    {
        nu1 = a(nu1, class1);
        if (nu1 != null)
        {
            return a(a(((byte []) (nu1)), s), class2);
        } else
        {
            ja.a(6, a, "Response in bytes is null");
            return null;
        }
    }

    private byte[] a(InputStream inputstream)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[128];
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                bytearrayoutputstream.write(abyte0, 0, i);
            } else
            {
                return bytearrayoutputstream.toByteArray();
            }
        } while (true);
    }

    private byte[] a(byte abyte0[], String s)
    {
        Object obj;
        Object obj1;
        obj = new ByteArrayEntity(abyte0);
        ((ByteArrayEntity) (obj)).setContentType("avro/binary");
        ja.a(4, a, (new StringBuilder()).append("httpPOSTAvroBytesToUrl: reportUrl = ").append(s).toString());
        obj1 = new HttpPost(s);
        ((HttpPost) (obj1)).setEntity(((HttpEntity) (obj)));
        ((HttpPost) (obj1)).setHeader("accept", "avro/binary");
        ((HttpPost) (obj1)).setHeader("FM-Checksum", Integer.toString(a(abyte0)));
        abyte0 = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(abyte0, 10000);
        HttpConnectionParams.setSoTimeout(abyte0, 15000);
        ((HttpPost) (obj1)).getParams().setBooleanParameter("http.protocol.expect-continue", false);
        abyte0 = iz.a(abyte0);
        int i;
        obj1 = abyte0.execute(((org.apache.http.client.methods.HttpUriRequest) (obj1)));
        i = ((HttpResponse) (obj1)).getStatusLine().getStatusCode();
        if (i != 200) goto _L2; else goto _L1
_L1:
        if (((HttpResponse) (obj1)).getEntity() == null || ((HttpResponse) (obj1)).getEntity().getContentLength() == 0L) goto _L2; else goto _L3
_L3:
        byte abyte1[];
        boolean flag;
        ja.a(4, a, "Request successful");
        abyte1 = a(((HttpResponse) (obj1)).getEntity().getContent());
        ((ByteArrayEntity) (obj)).consumeContent();
        obj = Integer.toString(a(abyte1));
        if (!((HttpResponse) (obj1)).containsHeader("FM-Checksum"))
        {
            break MISSING_BLOCK_LABEL_259;
        }
        flag = ((HttpResponse) (obj1)).getFirstHeader("FM-Checksum").getValue().equals(obj);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_277;
        }
        if (abyte0 != null)
        {
            abyte0.getConnectionManager().shutdown();
        }
        return abyte1;
        ja.a(6, a, "Response was received, but checksum failed.");
_L7:
        if (abyte0 != null)
        {
            abyte0.getConnectionManager().shutdown();
        }
_L5:
        return null;
_L2:
        ja.a(6, a, (new StringBuilder()).append("Request to url = ").append(s).append(" failed with HTTP = ").append(i).toString());
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        ja.a(6, a, (new StringBuilder()).append("Request to url = ").append(s).append(" failed with IOException = ").append(ioexception.toString()).toString(), ioexception);
        if (abyte0 != null)
        {
            abyte0.getConnectionManager().shutdown();
        }
        if (true) goto _L5; else goto _L4
_L4:
        s;
        if (abyte0 != null)
        {
            abyte0.getConnectionManager().shutdown();
        }
        throw s;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private nu b(byte abyte0[], Class class1)
    {
        Object obj = b.a(new ByteArrayInputStream(abyte0), null);
        try
        {
            obj = (nu)(new nr(class1)).a(null, ((lx) (obj)));
        }
        catch (ClassCastException classcastexception)
        {
            ja.a(6, a, (new StringBuilder()).append("ClassCastException in parseAvroBinary:").append(classcastexception.getMessage()).toString());
            ja.a(3, a, (new StringBuilder()).append("ClassCastException in parseAvroBinary: bytes = ").append(abyte0).append(" type = ").append(class1.getSimpleName()).toString());
            return null;
        }
        catch (IOException ioexception)
        {
            ja.a(6, a, (new StringBuilder()).append("IOException in parseAvroBinary:").append(ioexception.getMessage()).toString());
            ja.a(3, a, (new StringBuilder()).append("IOException in parseAvroBinary: bytes = ").append(abyte0).append(" type = ").append(class1.getSimpleName()).toString());
            return null;
        }
        return ((nu) (obj));
    }

    int a(byte abyte0[])
    {
        iv iv1 = new iv();
        iv1.update(abyte0);
        return iv1.b();
    }

    public AdResponse a(AdRequest adrequest, String s)
    {
        return (AdResponse)a(((nu) (adrequest)), s, com/flurry/android/impl/ads/avro/protocol/v6/AdRequest, com/flurry/android/impl/ads/avro/protocol/v6/AdResponse);
    }

    public SdkLogResponse a(SdkLogRequest sdklogrequest, String s)
    {
        return (SdkLogResponse)a(((nu) (sdklogrequest)), s, com/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest, com/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse);
    }

    nu a(byte abyte0[], Class class1)
    {
        if (abyte0 == null)
        {
            ja.a(6, a, "convertBytesToResponse: bytes array is null");
            return null;
        } else
        {
            return b(abyte0, class1);
        }
    }

    byte[] a(nu nu1, Class class1)
    {
        if (nu1 == null)
        {
            ja.a(6, a, "convertRequestToByte: Request is null");
            return null;
        }
        class1 = new ns(class1);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        lr lr1 = md.a().b(bytearrayoutputstream, null);
        try
        {
            class1.a(nu1, lr1);
            lr1.flush();
        }
        // Misplaced declaration of an exception variable
        catch (nu nu1)
        {
            ja.a(6, a, (new StringBuilder()).append("Error generating adlog request").append(nu1.getMessage()).toString());
            return null;
        }
        return bytearrayoutputstream.toByteArray();
    }

}
