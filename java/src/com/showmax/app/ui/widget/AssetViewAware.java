// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

// Referenced classes of package com.showmax.app.ui.widget:
//            AssetView

public class AssetViewAware
    implements ImageAware
{

    protected Reference mAssetViewReference;

    public AssetViewAware(AssetView assetview)
    {
        if (assetview == null)
        {
            throw new IllegalArgumentException("view must not be null");
        } else
        {
            mAssetViewReference = new WeakReference(assetview);
            return;
        }
    }

    private static int getImageViewFieldValue(Object obj, String s)
    {
        boolean flag = false;
        int i;
        int j;
        try
        {
            s = android/widget/ImageView.getDeclaredField(s);
            s.setAccessible(true);
            j = ((Integer)s.get(obj)).intValue();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return 0;
        }
        i = ((flag) ? 1 : 0);
        if (j > 0)
        {
            i = ((flag) ? 1 : 0);
            if (j < 0x7fffffff)
            {
                i = j;
            }
        }
        return i;
    }

    public int getHeight()
    {
        AssetView assetview = (AssetView)mAssetViewReference.get();
        if (assetview != null)
        {
            android.view.ViewGroup.LayoutParams layoutparams = assetview.getLayoutParams();
            int j = 0;
            int i = j;
            if (layoutparams != null)
            {
                i = j;
                if (layoutparams.height != -2)
                {
                    i = assetview.getHeight();
                }
            }
            j = i;
            if (i <= 0)
            {
                j = i;
                if (layoutparams != null)
                {
                    j = layoutparams.height;
                }
            }
            i = j;
            if (j <= 0)
            {
                i = getImageViewFieldValue(assetview, "mMaxHeight");
            }
            return i;
        } else
        {
            return 0;
        }
    }

    public int getId()
    {
        AssetView assetview = (AssetView)mAssetViewReference.get();
        if (assetview == null)
        {
            return super.hashCode();
        } else
        {
            return assetview.hashCode();
        }
    }

    public ViewScaleType getScaleType()
    {
        AssetView assetview = (AssetView)mAssetViewReference.get();
        if (assetview != null)
        {
            return ViewScaleType.fromImageView(assetview.getImageView());
        } else
        {
            return ViewScaleType.CROP;
        }
    }

    public int getWidth()
    {
        AssetView assetview = (AssetView)mAssetViewReference.get();
        if (assetview != null)
        {
            android.view.ViewGroup.LayoutParams layoutparams = assetview.getLayoutParams();
            int j = 0;
            int i = j;
            if (layoutparams != null)
            {
                i = j;
                if (layoutparams.width != -2)
                {
                    i = assetview.getWidth();
                }
            }
            j = i;
            if (i <= 0)
            {
                j = i;
                if (layoutparams != null)
                {
                    j = layoutparams.width;
                }
            }
            i = j;
            if (j <= 0)
            {
                i = getImageViewFieldValue(assetview, "mMaxWidth");
            }
            return i;
        } else
        {
            return 0;
        }
    }

    public View getWrappedView()
    {
        return (View)mAssetViewReference.get();
    }

    public boolean isCollected()
    {
        return mAssetViewReference.get() == null;
    }

    public boolean setImageBitmap(Bitmap bitmap)
    {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            AssetView assetview = (AssetView)mAssetViewReference.get();
            if (assetview != null)
            {
                assetview.setImageBitmap(bitmap);
                return true;
            }
        }
        return false;
    }

    public boolean setImageDrawable(Drawable drawable)
    {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            AssetView assetview = (AssetView)mAssetViewReference.get();
            if (assetview != null)
            {
                assetview.setImageDrawable(drawable);
                return true;
            }
        }
        return false;
    }
}
