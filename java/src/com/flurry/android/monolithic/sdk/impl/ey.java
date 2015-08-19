// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.os.Looper;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja, ia, iw, je, 
//            ew

public class ey
{

    static final Integer a = Integer.valueOf(50);
    private static final String c = com/flurry/android/monolithic/sdk/impl/ey.getSimpleName();
    LinkedHashMap b;

    public ey()
    {
        a();
    }

    private boolean a(File file)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if (file == null) goto _L2; else goto _L1
_L1:
        flag = flag1;
        if (!file.exists()) goto _L2; else goto _L3
_L3:
        ja.a(4, c, (new StringBuilder()).append("Trying to delete persistence file : ").append(file.getAbsolutePath()).toString());
        flag = file.delete();
        if (!flag) goto _L5; else goto _L4
_L4:
        ja.a(4, c, "Deleted persistence file");
_L2:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L5:
        ja.a(6, c, "Cannot delete persistence file");
        if (true) goto _L2; else goto _L6
_L6:
        file;
        throw file;
    }

    private boolean a(String s, List list)
    {
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            ja.a(6, c, "saveToFile(byte[], ID) running on the MAIN thread!");
        }
        s = ia.a().b().getFileStreamPath((new StringBuilder()).append(".FlurrySenderIndex.info.").append(s).toString());
        boolean flag1 = iw.a(s);
        if (flag1) goto _L2; else goto _L1
_L1:
        je.a(null);
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(s));
        s = dataoutputstream;
        dataoutputstream.writeShort(list.size());
        int i = 0;
_L4:
        s = dataoutputstream;
        if (i >= list.size())
        {
            break; /* Loop/switch isn't completed */
        }
        s = dataoutputstream;
        byte abyte0[] = ((String)list.get(i)).getBytes();
        s = dataoutputstream;
        int j = abyte0.length;
        s = dataoutputstream;
        ja.a(4, c, (new StringBuilder()).append("write iter ").append(i).append(" dataLength = ").append(j).toString());
        s = dataoutputstream;
        dataoutputstream.writeShort(j);
        s = dataoutputstream;
        dataoutputstream.write(abyte0);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        s = dataoutputstream;
        dataoutputstream.writeShort(0);
        flag = true;
        je.a(dataoutputstream);
          goto _L5
        Throwable throwable;
        throwable;
        list = null;
_L7:
        s = list;
        ja.a(6, c, "", throwable);
        je.a(list);
        flag = false;
          goto _L5
_L6:
        je.a(s);
        throw list;
        s;
        this;
        JVM INSTR monitorexit ;
        throw s;
        list;
          goto _L6
        throwable;
        list = dataoutputstream;
          goto _L7
        list;
        s = null;
          goto _L6
    }

    private List d(String s)
    {
        byte abyte0[] = null;
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            ja.a(6, c, "readFromFile(byte[], ID) running on the MAIN thread!");
        }
        s = ia.a().b().getFileStreamPath((new StringBuilder()).append(".FlurrySenderIndex.info.").append(s).toString());
        flag = s.exists();
        if (!flag) goto _L2; else goto _L1
_L1:
        DataInputStream datainputstream1 = new DataInputStream(new FileInputStream(s));
        DataInputStream datainputstream = datainputstream1;
        int j = datainputstream1.readUnsignedShort();
        if (j != 0) goto _L4; else goto _L3
_L3:
        je.a(datainputstream1);
        s = abyte0;
_L7:
        this;
        JVM INSTR monitorexit ;
        return s;
_L4:
        datainputstream = datainputstream1;
        s = new ArrayList(j);
        int i = 0;
_L6:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        datainputstream = datainputstream1;
        int k = datainputstream1.readUnsignedShort();
        datainputstream = datainputstream1;
        ja.a(4, c, (new StringBuilder()).append("read iter ").append(i).append(" dataLength = ").append(k).toString());
        datainputstream = datainputstream1;
        abyte0 = new byte[k];
        datainputstream = datainputstream1;
        datainputstream1.readFully(abyte0);
        datainputstream = datainputstream1;
        s.add(new String(abyte0));
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        datainputstream = datainputstream1;
        i = datainputstream1.readUnsignedShort();
        if (i != 0);
        je.a(datainputstream1);
          goto _L7
        Throwable throwable;
        throwable;
        datainputstream1 = null;
        s = null;
_L9:
        datainputstream = datainputstream1;
        ja.a(6, c, "Error when loading persistent file", throwable);
        je.a(datainputstream1);
          goto _L7
        s;
        throw s;
        s;
        datainputstream = null;
_L8:
        je.a(datainputstream);
        throw s;
_L2:
        ja.a(5, c, "Agent cache file doesn't exist.");
        s = null;
          goto _L7
        s;
          goto _L8
        throwable;
        s = null;
          goto _L9
        throwable;
          goto _L9
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        LinkedList linkedlist = new LinkedList(b.keySet());
        c();
        if (!linkedlist.isEmpty())
        {
            a("Main", linkedlist);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void a()
    {
        b = new LinkedHashMap();
        Object obj = d("Main");
        if (obj != null)
        {
            obj = ((List) (obj)).iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                String s = (String)((Iterator) (obj)).next();
                List list = d(s);
                if (list != null)
                {
                    b.put(s, list);
                }
            }
        }
    }

    public void a(ew ew1, String s)
    {
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        String s1;
        ja.a(4, c, "addBlockInfo");
        s1 = ew1.a();
        ew1 = (List)b.get(s);
        if (ew1 != null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        ja.a(4, c, "New Data Key");
        ew1 = new LinkedList();
        flag = true;
        ew1.add(s1);
        if (ew1.size() > a.intValue())
        {
            a((String)ew1.get(0));
            ew1.remove(0);
        }
        b.put(s, ew1);
        a(s, ((List) (ew1)));
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        d();
        this;
        JVM INSTR monitorexit ;
        return;
        ew1;
        throw ew1;
    }

    boolean a(String s)
    {
        return (new ew(s)).c();
    }

    public boolean a(String s, String s1)
    {
        List list = (List)b.get(s1);
        boolean flag = false;
        if (list != null)
        {
            a(s);
            flag = list.remove(s);
        }
        if (list != null && !list.isEmpty())
        {
            b.put(s1, list);
            a(s1, list);
            return flag;
        } else
        {
            c(s1);
            return flag;
        }
    }

    public List b()
    {
        return new ArrayList(b.keySet());
    }

    public List b(String s)
    {
        return (List)b.get(s);
    }

    void c()
    {
        a(ia.a().b().getFileStreamPath(".FlurrySenderIndex.info.Main"));
    }

    public boolean c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        File file;
        List list;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            ja.a(6, c, "discardOutdatedBlocksForDataKey(ID) running on the MAIN thread!");
        }
        file = ia.a().b().getFileStreamPath((new StringBuilder()).append(".FlurrySenderIndex.info.").append(s).toString());
        list = b(s);
        if (list == null) goto _L2; else goto _L1
_L1:
        ja.a(4, c, (new StringBuilder()).append("discardOutdatedBlocksForDataKey: notSentBlocks = ").append(list.size()).toString());
        int i = 0;
_L3:
        if (i >= list.size())
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = (String)list.get(i);
        a(s1);
        ja.a(4, c, (new StringBuilder()).append("discardOutdatedBlocksForDataKey: removed block = ").append(s1).toString());
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        boolean flag;
        b.remove(s);
        flag = a(file);
        d();
        this;
        JVM INSTR monitorexit ;
        return flag;
        s;
        throw s;
    }

}
