// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;

import android.content.Context;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.flurry.android.impl.appcloud.AppCloudModule;
import com.flurry.android.monolithic.sdk.impl.f;
import com.flurry.android.monolithic.sdk.impl.fk;
import com.flurry.android.monolithic.sdk.impl.ft;
import com.flurry.android.monolithic.sdk.impl.fy;
import com.flurry.android.monolithic.sdk.impl.g;
import com.flurry.android.monolithic.sdk.impl.ga;
import com.flurry.android.monolithic.sdk.impl.go;
import com.flurry.android.monolithic.sdk.impl.hd;
import com.flurry.android.monolithic.sdk.impl.ja;
import java.util.UUID;

// Referenced classes of package com.flurry.android:
//            FlurryWalletError, FlurryWalletHandler, FlurryWalletOperationHandler, FlurryWalletInfo

public class FlurryWallet
{

    private static Context a = null;

    public FlurryWallet()
    {
    }

    private static String a()
    {
        if (a == null)
        {
            ja.a(6, "FlurryWallet", "Please call initWalletModule first.");
            return null;
        }
        Object obj;
        try
        {
            obj = (TelephonyManager)a.getSystemService("phone");
            obj = (new StringBuilder()).append("").append(((TelephonyManager) (obj)).getDeviceId()).toString();
            long l = (new StringBuilder()).append("").append(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id")).toString().hashCode();
            long l1 = ((String) (obj)).hashCode();
            obj = (new UUID(l, (long)"".hashCode() | l1 << 32)).toString();
        }
        catch (Exception exception)
        {
            ja.a(6, "FlurryWallet", "Could not get device id.");
            exception.printStackTrace();
            return null;
        }
        return ((String) (obj));
    }

    public static void a(String s, float f1, FlurryWalletOperationHandler flurrywalletoperationhandler)
    {
        b(s, f1, flurrywalletoperationhandler);
    }

    public static void a(String s, FlurryWalletHandler flurrywallethandler)
    {
        ft ft1 = ft.f();
        if (ft1 == null)
        {
            flurrywallethandler.onError(new FlurryWalletError(400, "Please assign an object id."));
            return;
        } else
        {
            AppCloudModule.getInstance().b().a(ft1.a(), s, new ga(flurrywallethandler));
            AppCloudModule.getInstance().b().b(ft1.a());
            return;
        }
    }

    static void a(String s, String s1, String s2, String s3, FlurryWalletHandler flurrywallethandler)
    {
        try
        {
            ft.a(s, s1, s2, true, new f(s3, flurrywallethandler));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public static void addObserverForCurrencyKey(String s, FlurryWalletHandler flurrywallethandler)
    {
        String s1 = fy.d();
        String s3 = fy.h();
        if (TextUtils.isEmpty(s1) || TextUtils.isEmpty(s3))
        {
            ja.a(4, "FlurryWallet", "There is no last logged in user");
            String s2 = a();
            if (s2 == null)
            {
                ja.a(6, "FlurryWallet", "Could not generate Wallet user.");
                return;
            } else
            {
                a(s2, s2, (new StringBuilder()).append(s2).append("@").append(s2).append(".flurry.com").toString(), s, flurrywallethandler);
                return;
            }
        } else
        {
            a(s, flurrywallethandler);
            return;
        }
    }

    private static void b(String s, float f1, FlurryWalletOperationHandler flurrywalletoperationhandler)
    {
        ft ft1 = ft.f();
        if (ft1 == null)
        {
            flurrywalletoperationhandler.onError(new FlurryWalletError(400, "Please assign an object id."));
            return;
        }
        if (f1 <= 0.0F)
        {
            flurrywalletoperationhandler.onError(new FlurryWalletError(400, "decrementWalletForCurrencyKey may only be called with a positive value."));
            return;
        } else
        {
            ft1.a(s, f1, new fk(flurrywalletoperationhandler));
            return;
        }
    }

    public static void decrementWalletForCurrencyKey(String s, float f1, FlurryWalletOperationHandler flurrywalletoperationhandler)
    {
        String s1 = fy.d();
        String s3 = fy.h();
        if (TextUtils.isEmpty(s1) || TextUtils.isEmpty(s3))
        {
            ja.a(4, "FlurryWallet", "There is no last logged in user");
            String s2 = a();
            if (s2 == null)
            {
                ja.a(6, "FlurryWallet", "Could not generate Wallet user.");
                return;
            }
            String s4 = (new StringBuilder()).append(s2).append("@").append(s2).append(".flurry.com").toString();
            try
            {
                ft.a(s2, s2, s4, true, new g(s, f1, flurrywalletoperationhandler));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            return;
        } else
        {
            b(s, f1, flurrywalletoperationhandler);
            return;
        }
    }

    public static FlurryWalletInfo getLastReceivedValueForCurrencyKey(String s)
    {
        ft ft1;
        if (!TextUtils.isEmpty(s))
        {
            if ((ft1 = ft.f()) != null)
            {
                return new FlurryWalletInfo(s, ft1.a(s));
            }
        }
        return null;
    }

    public static void initWalletModule(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Null context");
        } else
        {
            a = context.getApplicationContext();
            go.a(context);
            return;
        }
    }

    public static boolean removeAllObservers()
    {
        ft ft1 = ft.f();
        if (ft1 != null)
        {
            return ft1.c();
        } else
        {
            return false;
        }
    }

    public static boolean removeObserver(FlurryWalletHandler flurrywallethandler)
    {
        Object obj;
label0:
        {
            obj = ft.f();
            if (obj != null)
            {
                obj = ((ft) (obj)).a();
                if (!TextUtils.isEmpty(((CharSequence) (obj))))
                {
                    break label0;
                }
            }
            return false;
        }
        return AppCloudModule.getInstance().b().a(((String) (obj)), new ga(flurrywallethandler));
    }

    public static boolean removeObserversForCurrencyKey(String s)
    {
        Object obj;
label0:
        {
            obj = ft.f();
            if (obj != null)
            {
                obj = ((ft) (obj)).a();
                if (!TextUtils.isEmpty(((CharSequence) (obj))))
                {
                    break label0;
                }
            }
            return false;
        }
        return AppCloudModule.getInstance().b().a(((String) (obj)), s);
    }

    public static void setWalletServerUrl(String s)
    {
        String s1 = null;
        if (!TextUtils.isEmpty(s))
        {
            s1 = Uri.parse(s).getHost();
        }
        go.b(s1);
    }

}
