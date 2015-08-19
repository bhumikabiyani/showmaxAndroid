// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.splunk.mint.network;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.splunk.mint.network:
//            Metric

public class MonitorRegistry
{

    private Set metrics;

    public MonitorRegistry()
    {
        metrics = Collections.synchronizedSet(new HashSet());
    }

    public void add(Metric metric)
    {
        metrics.add(metric);
    }

    public ArrayList getMetricsForName(String s)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        Metric ametric[];
        arraylist = new ArrayList();
        ametric = (Metric[])metrics.toArray(new Metric[metrics.size()]);
        int i = 0;
_L2:
        if (i >= ametric.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (s.contains(ametric[i].getName().substring(0, ametric[i].getName().indexOf("-"))))
        {
            arraylist.add(ametric[i]);
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return arraylist;
        s;
        throw s;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        Metric metric;
        for (Iterator iterator = metrics.iterator(); iterator.hasNext(); stringbuffer.append((new StringBuilder()).append(metric.getName()).append(" = ").append(metric.getValue()).append("\n").toString()))
        {
            metric = (Metric)iterator.next();
        }

        return stringbuffer.toString();
    }
}
