// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import com.flurry.android.monolithic.sdk.impl.ar;
import com.flurry.android.monolithic.sdk.impl.ay;
import com.flurry.android.monolithic.sdk.impl.b;
import com.flurry.android.monolithic.sdk.impl.c;
import com.flurry.android.monolithic.sdk.impl.cq;
import com.flurry.android.monolithic.sdk.impl.d;
import com.flurry.android.monolithic.sdk.impl.ja;
import com.flurry.android.monolithic.sdk.impl.n;
import com.flurry.android.monolithic.sdk.impl.o;
import java.util.Collections;

// Referenced classes of package com.flurry.android:
//            FlurryAgent

public final class FlurryFullscreenTakeoverActivity extends Activity
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{

    public static final String EXTRA_KEY_ADSPACENAME = "adSpaceName";
    public static final String EXTRA_KEY_FRAMEINDEX = "frameIndex";
    public static final String EXTRA_KEY_TARGETINTENT = "targetIntent";
    public static final String EXTRA_KEY_URL = "url";
    private static final String a = com/flurry/android/FlurryFullscreenTakeoverActivity.getSimpleName();
    private o b;
    private AdUnit c;
    private ViewGroup d;
    private ar e;
    private ProgressDialog f;
    private VideoView g;
    private boolean h;
    private MediaController i;
    private boolean j;
    private Intent k;
    private long l;
    private String m;
    private ay n;

    public FlurryFullscreenTakeoverActivity()
    {
        n = ay.a;
    }

    public static VideoView a(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity)
    {
        return flurryfullscreentakeoveractivity.g;
    }

    public static VideoView a(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, VideoView videoview)
    {
        flurryfullscreentakeoveractivity.g = videoview;
        return videoview;
    }

    public static ay a(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, ay ay1)
    {
        flurryfullscreentakeoveractivity.n = ay1;
        return ay1;
    }

    private void a()
    {
        if (f != null)
        {
            if (f.isShowing())
            {
                f.dismiss();
            }
            f = null;
        }
        if (e != null)
        {
            e.setVisibility(0);
        }
        if (g != null)
        {
            if (g.isPlaying())
            {
                g.stopPlayback();
            }
            if (d != null)
            {
                d.removeView(g);
            }
            g = null;
        }
        h = false;
        i = null;
    }

    public static boolean a(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, String s)
    {
        return flurryfullscreentakeoveractivity.a(s);
    }

    public static boolean a(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, String s, String s1)
    {
        return flurryfullscreentakeoveractivity.a(s, s1);
    }

    public static boolean a(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, boolean flag)
    {
        flurryfullscreentakeoveractivity.h = flag;
        return flag;
    }

    private boolean a(String s)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (!TextUtils.isEmpty(s))
        {
            s = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(s));
            flag = flag1;
            if (s != null)
            {
                flag = flag1;
                if (s.startsWith("video/"))
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    private boolean a(String s, String s1)
    {
        if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1))
        {
            if (!TextUtils.isEmpty(s1 = Uri.parse(s1).getQueryParameter("link")) && s1.equalsIgnoreCase(s))
            {
                return true;
            }
        }
        return false;
    }

    public static String b(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity)
    {
        return flurryfullscreentakeoveractivity.m;
    }

    public static void b(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, String s)
    {
        flurryfullscreentakeoveractivity.c(s);
    }

    private boolean b(String s)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (!TextUtils.isEmpty(s))
        {
            s = Uri.parse(s);
            flag = flag1;
            if (s.getScheme() != null)
            {
                flag = flag1;
                if (s.getScheme().equals("market"))
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    private void c(String s)
    {
        if (!TextUtils.isEmpty(s) && g != null && d != null)
        {
            i = new MediaController(this);
            g.setOnPreparedListener(this);
            g.setOnCompletionListener(this);
            g.setOnErrorListener(this);
            g.setMediaController(i);
            g.setVideoURI(Uri.parse(s));
            d.addView(g, new android.widget.FrameLayout.LayoutParams(-1, -1, 17));
            f = new ProgressDialog(this);
            f.setProgressStyle(0);
            f.setMessage("Loading...");
            f.setCancelable(true);
            f.show();
            if (e != null)
            {
                e.setVisibility(8);
                return;
            }
        }
    }

    public static boolean c(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, String s)
    {
        return flurryfullscreentakeoveractivity.b(s);
    }

    public AdUnit getAdUnit()
    {
        return c;
    }

    public o getAdUnityView()
    {
        return b;
    }

    public ay getResult()
    {
        return n;
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        ja.a(3, a, "onCompletion");
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        ja.a(3, a, "onConfigurationChange");
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        int i1 = -1;
        ja.a(3, a, "onCreate");
        setTheme(0x1030007);
        super.onCreate(bundle);
        cq.a(getWindow());
        Object obj = getIntent();
        k = (Intent)((Intent) (obj)).getParcelableExtra("targetIntent");
        m = ((Intent) (obj)).getStringExtra("adSpaceName");
        if (k != null)
        {
            try
            {
                startActivity(k);
                l = SystemClock.elapsedRealtime();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ja.b(a, "Cannot launch Activity", ((Throwable) (obj)));
                k = null;
                finish();
            }
        } else
        {
            String s = ((Intent) (obj)).getStringExtra("url");
            if (s == null)
            {
                d = new RelativeLayout(this);
                int j1;
                if (bundle != null)
                {
                    i1 = bundle.getInt("frameIndex", -1);
                }
                j1 = i1;
                if (i1 < 0)
                {
                    j1 = ((Intent) (obj)).getIntExtra("frameIndex", 0);
                }
                obj = FlurryAdModule.getInstance();
                c = ((FlurryAdModule) (obj)).H();
                if (c != null)
                {
                    b = new o(this, ((FlurryAdModule) (obj)), ((FlurryAdModule) (obj)).G(), c, j1);
                    b.initLayout();
                    obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                    ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(13);
                    d.addView(b, ((android.view.ViewGroup.LayoutParams) (obj)));
                    setContentView(d);
                } else
                {
                    ja.a(3, a, "appSpotModule.getTakeoverAdUnit() IS null ");
                }
            } else
            {
                d = new FrameLayout(this);
                setContentView(d);
                if (a(s))
                {
                    g = new n(this);
                    c(s);
                } else
                {
                    e = new ar(this, s);
                    e.setBasicWebViewUrlLoadingHandler(new d(this, null));
                    e.setBasicWebViewClosingHandler(new b(this, null));
                    e.setBasicWebViewFullScreenTransitionHandler(new c(this, null));
                    d.addView(e);
                }
            }
        }
        FlurryAdModule.getInstance().a(this, bundle);
    }

    protected void onDestroy()
    {
        ja.a(3, a, "onDestroy");
        a();
        if (e != null)
        {
            e.c();
        }
        if (b != null)
        {
            b.stop();
        }
        FlurryAdModule.getInstance().b(this);
        super.onDestroy();
    }

    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
    {
        ja.a(3, a, "onError");
        ja.b(a, "Error occurs during video playback");
        if (e != null)
        {
            if (h)
            {
                if (e.a())
                {
                    e.b();
                    a();
                } else
                {
                    finish();
                }
            } else
            {
                a();
            }
        } else
        {
            finish();
        }
        return true;
    }

    public boolean onKeyUp(int i1, KeyEvent keyevent)
    {
        if (i1 == 4)
        {
            if (b != null)
            {
                b.a("adWillClose", Collections.emptyMap(), b.getAdUnit(), b.getAdLog(), b.getAdFrameIndex(), 0);
                return true;
            }
            if (g != null)
            {
                if (e != null)
                {
                    if (h)
                    {
                        if (e.a())
                        {
                            e.b();
                            a();
                            return true;
                        }
                    } else
                    {
                        a();
                        return true;
                    }
                }
            } else
            if (e != null)
            {
                if (e.a())
                {
                    e.b();
                } else
                {
                    n = ay.b;
                    finish();
                }
                return true;
            }
        }
        return super.onKeyUp(i1, keyevent);
    }

    protected void onPause()
    {
        ja.a(3, a, "onPause");
        super.onPause();
        j = false;
        if (g != null && g.isPlaying())
        {
            g.pause();
        }
        if (b != null)
        {
            b.c();
        }
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        ja.a(3, a, "onPrepared");
        if (f != null && f.isShowing())
        {
            f.dismiss();
        }
        if (g != null && j)
        {
            g.start();
        }
    }

    protected void onRestart()
    {
        ja.a(3, a, "onRestart");
        super.onRestart();
    }

    protected void onResume()
    {
        ja.a(3, a, "onResume");
        super.onResume();
        j = true;
        if (i != null)
        {
            i.show(0);
        }
        if (b != null)
        {
            b.b();
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (b != null)
        {
            bundle.putInt("frameIndex", b.getAdFrameIndex());
        }
    }

    public void onStart()
    {
        ja.a(3, a, "onStart");
        super.onStart();
        if (FlurryAdModule.getInstance().f() != null)
        {
            FlurryAgent.onStartSession(this, FlurryAdModule.getInstance().f());
            return;
        } else
        {
            finish();
            return;
        }
    }

    public void onStop()
    {
        ja.a(3, a, "onStop");
        FlurryAgent.onEndSession(this);
        super.onStop();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        ja.a(3, a, (new StringBuilder()).append("onWindowFocusChanged hasFocus = ").append(flag).toString());
        if (j && flag && k != null && SystemClock.elapsedRealtime() - l > 250L)
        {
            ja.a(3, a, "terminate this launcher activity because launched activity was terminated or wasn't launched");
            finish();
        }
        super.onWindowFocusChanged(flag);
    }

}
