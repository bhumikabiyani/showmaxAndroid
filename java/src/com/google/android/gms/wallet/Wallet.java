// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzvw;
import com.google.android.gms.internal.zzwh;
import com.google.android.gms.internal.zzwi;
import com.google.android.gms.internal.zzwk;
import com.google.android.gms.internal.zzwl;
import com.google.android.gms.wallet.wobs.zzr;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.wallet:
//            Payments, FullWalletRequest, MaskedWalletRequest, NotifyTransactionStatusRequest

public final class Wallet
{
    public static final class WalletOptions
        implements com.google.android.gms.common.api.Api.ApiOptions.HasOptions
    {

        public final int environment;
        public final int theme;

        private WalletOptions()
        {
            this(new Builder());
        }


        private WalletOptions(Builder builder)
        {
            environment = Builder.zza(builder);
            theme = Builder.zzb(builder);
        }

    }

    public static final class WalletOptions.Builder
    {

        private int mTheme;
        private int zzaEo;

        static int zza(WalletOptions.Builder builder)
        {
            return builder.zzaEo;
        }

        static int zzb(WalletOptions.Builder builder)
        {
            return builder.mTheme;
        }

        public WalletOptions build()
        {
            return new WalletOptions(this);
        }

        public WalletOptions.Builder setEnvironment(int i)
        {
            if (i == 0 || i == 2 || i == 1)
            {
                zzaEo = i;
                return this;
            } else
            {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid environment value %d", new Object[] {
                    Integer.valueOf(i)
                }));
            }
        }

        public WalletOptions.Builder setTheme(int i)
        {
            if (i == 0 || i == 1)
            {
                mTheme = i;
                return this;
            } else
            {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid theme value %d", new Object[] {
                    Integer.valueOf(i)
                }));
            }
        }

        public WalletOptions.Builder()
        {
            zzaEo = 0;
            mTheme = 0;
        }
    }

    public static abstract class zza extends com.google.android.gms.common.api.zza.zza
    {

        public zza(GoogleApiClient googleapiclient)
        {
            super(Wallet.zzuS(), googleapiclient);
        }
    }

    public static abstract class zzb extends zza
    {

        protected Result createFailedResult(Status status)
        {
            return zzb(status);
        }

        protected Status zzb(Status status)
        {
            return status;
        }

        public zzb(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }


    public static final Api API;
    public static final Payments Payments = new zzwh();
    private static final com.google.android.gms.common.api.Api.zzc zzGR;
    private static final com.google.android.gms.common.api.Api.zzb zzGS;
    public static final zzr zzaEm = new zzwl();
    public static final zzvw zzaEn = new zzwk();

    private Wallet()
    {
    }

    public static void changeMaskedWallet(GoogleApiClient googleapiclient, String s, String s1, int i)
    {
        Payments.changeMaskedWallet(googleapiclient, s, s1, i);
    }

    public static void checkForPreAuthorization(GoogleApiClient googleapiclient, int i)
    {
        Payments.checkForPreAuthorization(googleapiclient, i);
    }

    public static void loadFullWallet(GoogleApiClient googleapiclient, FullWalletRequest fullwalletrequest, int i)
    {
        Payments.loadFullWallet(googleapiclient, fullwalletrequest, i);
    }

    public static void loadMaskedWallet(GoogleApiClient googleapiclient, MaskedWalletRequest maskedwalletrequest, int i)
    {
        Payments.loadMaskedWallet(googleapiclient, maskedwalletrequest, i);
    }

    public static void notifyTransactionStatus(GoogleApiClient googleapiclient, NotifyTransactionStatusRequest notifytransactionstatusrequest)
    {
        Payments.notifyTransactionStatus(googleapiclient, notifytransactionstatusrequest);
    }

    static com.google.android.gms.common.api.Api.zzc zzuS()
    {
        return zzGR;
    }

    static 
    {
        zzGR = new com.google.android.gms.common.api.Api.zzc();
        zzGS = new com.google.android.gms.common.api.Api.zzb() {

            public int getPriority()
            {
                return 0x7fffffff;
            }

            public volatile com.google.android.gms.common.api.Api.zza zza(Context context, Looper looper, zzf zzf1, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return zza(context, looper, zzf1, (WalletOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public zzwi zza(Context context, Looper looper, zzf zzf1, WalletOptions walletoptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                zzx.zzb(context instanceof Activity, "An Activity must be used for Wallet APIs");
                context = (Activity)context;
                if (walletoptions == null)
                {
                    walletoptions = new WalletOptions();
                }
                return new zzwi(context, looper, connectioncallbacks, onconnectionfailedlistener, walletoptions.environment, zzf1.getAccountName(), walletoptions.theme);
            }

        };
        API = new Api(zzGS, zzGR, new Scope[0]);
    }
}
