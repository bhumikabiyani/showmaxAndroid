// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class FIFOLimitedMemoryCache extends LimitedMemoryCache
{

    private final List queue = Collections.synchronizedList(new LinkedList());

    public FIFOLimitedMemoryCache(int i)
    {
        super(i);
    }

    public void clear()
    {
        queue.clear();
        super.clear();
    }

    protected Reference createReference(Bitmap bitmap)
    {
        return new WeakReference(bitmap);
    }

    protected int getSize(Bitmap bitmap)
    {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public volatile boolean put(Object obj, Object obj1)
    {
        return put((String)obj, (Bitmap)obj1);
    }

    public boolean put(String s, Bitmap bitmap)
    {
        if (super.put(s, bitmap))
        {
            queue.add(bitmap);
            return true;
        } else
        {
            return false;
        }
    }

    public Bitmap remove(String s)
    {
        Bitmap bitmap = super.get(s);
        if (bitmap != null)
        {
            queue.remove(bitmap);
        }
        return super.remove(s);
    }

    public volatile Object remove(Object obj)
    {
        return remove((String)obj);
    }

    protected Bitmap removeNext()
    {
        return (Bitmap)queue.remove(0);
    }
}
