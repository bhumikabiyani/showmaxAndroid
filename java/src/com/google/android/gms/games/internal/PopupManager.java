// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.app.Activity;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.internal.zzme;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl, GamesLog

public class PopupManager
{
    public static final class PopupLocationInfo
    {

        public int bottom;
        public int gravity;
        public int left;
        public int right;
        public int top;
        public IBinder zzafv;
        public int zzafw;

        public Bundle zzob()
        {
            Bundle bundle = new Bundle();
            bundle.putInt("popupLocationInfo.gravity", gravity);
            bundle.putInt("popupLocationInfo.displayId", zzafw);
            bundle.putInt("popupLocationInfo.left", left);
            bundle.putInt("popupLocationInfo.top", top);
            bundle.putInt("popupLocationInfo.right", right);
            bundle.putInt("popupLocationInfo.bottom", bottom);
            return bundle;
        }

        private PopupLocationInfo(int i, IBinder ibinder)
        {
            zzafw = -1;
            left = 0;
            top = 0;
            right = 0;
            bottom = 0;
            gravity = i;
            zzafv = ibinder;
        }

    }

    private static final class PopupManagerHCMR1 extends PopupManager
        implements android.view.View.OnAttachStateChangeListener, android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        private boolean zzadU;
        private WeakReference zzafx;

        private void zzn(View view)
        {
            int j = -1;
            int i = j;
            if (zzme.zzki())
            {
                Display display = view.getDisplay();
                i = j;
                if (display != null)
                {
                    i = display.getDisplayId();
                }
            }
            IBinder ibinder = view.getWindowToken();
            int ai[] = new int[2];
            view.getLocationInWindow(ai);
            j = view.getWidth();
            int k = view.getHeight();
            zzafu.zzafw = i;
            zzafu.zzafv = ibinder;
            zzafu.left = ai[0];
            zzafu.top = ai[1];
            zzafu.right = ai[0] + j;
            zzafu.bottom = ai[1] + k;
            if (zzadU)
            {
                zzoc();
                zzadU = false;
            }
        }

        public void onGlobalLayout()
        {
            View view;
            if (zzafx != null)
            {
                if ((view = (View)zzafx.get()) != null)
                {
                    zzn(view);
                    return;
                }
            }
        }

        public void onViewAttachedToWindow(View view)
        {
            zzn(view);
        }

        public void onViewDetachedFromWindow(View view)
        {
            zzaft.zznL();
            view.removeOnAttachStateChangeListener(this);
        }

        protected void zzeI(int i)
        {
            zzafu = new PopupLocationInfo(i, null);
        }

        public void zzm(View view)
        {
            zzaft.zznL();
            if (zzafx != null)
            {
                View view1 = (View)zzafx.get();
                android.content.Context context1 = zzaft.getContext();
                Object obj = view1;
                if (view1 == null)
                {
                    obj = view1;
                    if (context1 instanceof Activity)
                    {
                        obj = ((Activity)context1).getWindow().getDecorView();
                    }
                }
                if (obj != null)
                {
                    ((View) (obj)).removeOnAttachStateChangeListener(this);
                    obj = ((View) (obj)).getViewTreeObserver();
                    android.content.Context context;
                    if (zzme.zzkh())
                    {
                        ((ViewTreeObserver) (obj)).removeOnGlobalLayoutListener(this);
                    } else
                    {
                        ((ViewTreeObserver) (obj)).removeGlobalOnLayoutListener(this);
                    }
                }
            }
            zzafx = null;
            context = zzaft.getContext();
            obj = view;
            if (view == null)
            {
                obj = view;
                if (context instanceof Activity)
                {
                    obj = ((Activity)context).findViewById(0x1020002);
                    view = ((View) (obj));
                    if (obj == null)
                    {
                        view = ((Activity)context).getWindow().getDecorView();
                    }
                    GamesLog.zzr("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view which may not work properly in future versions of the API. Use setViewForPopups() to set your content view.");
                    obj = view;
                }
            }
            if (obj != null)
            {
                zzn(((View) (obj)));
                zzafx = new WeakReference(obj);
                ((View) (obj)).addOnAttachStateChangeListener(this);
                ((View) (obj)).getViewTreeObserver().addOnGlobalLayoutListener(this);
                return;
            } else
            {
                GamesLog.zzs("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
                return;
            }
        }

        public void zzoc()
        {
            if (zzafu.zzafv != null)
            {
                zzoc();
                return;
            }
            boolean flag;
            if (zzafx != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzadU = flag;
        }

        protected PopupManagerHCMR1(GamesClientImpl gamesclientimpl, int i)
        {
            super(gamesclientimpl, i, null);
            zzadU = false;
        }
    }


    protected GamesClientImpl zzaft;
    protected PopupLocationInfo zzafu;

    private PopupManager(GamesClientImpl gamesclientimpl, int i)
    {
        zzaft = gamesclientimpl;
        zzeI(i);
    }


    public static PopupManager zza(GamesClientImpl gamesclientimpl, int i)
    {
        if (zzme.zzke())
        {
            return new PopupManagerHCMR1(gamesclientimpl, i);
        } else
        {
            return new PopupManager(gamesclientimpl, i);
        }
    }

    public void setGravity(int i)
    {
        zzafu.gravity = i;
    }

    protected void zzeI(int i)
    {
        zzafu = new PopupLocationInfo(i, new Binder());
    }

    public void zzm(View view)
    {
    }

    public void zzoc()
    {
        zzaft.zza(zzafu.zzafv, zzafu.zzob());
    }

    public Bundle zzod()
    {
        return zzafu.zzob();
    }

    public IBinder zzoe()
    {
        return zzafu.zzafv;
    }

    public PopupLocationInfo zzof()
    {
        return zzafu;
    }
}
