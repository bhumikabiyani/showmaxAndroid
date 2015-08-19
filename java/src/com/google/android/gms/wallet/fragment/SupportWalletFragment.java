// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.dynamic.zzh;
import com.google.android.gms.internal.zzwb;
import com.google.android.gms.internal.zzwj;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentOptions, WalletFragmentInitParams, WalletFragmentStyle

public final class SupportWalletFragment extends Fragment
{
    public static interface OnStateChangedListener
    {

        public abstract void onStateChanged(SupportWalletFragment supportwalletfragment, int i, int j, Bundle bundle);
    }

    static class zza extends com.google.android.gms.internal.zzwc.zza
    {

        private OnStateChangedListener zzaEC;
        private final SupportWalletFragment zzaED;

        public void zza(int i, int j, Bundle bundle)
        {
            if (zzaEC != null)
            {
                zzaEC.onStateChanged(zzaED, i, j, bundle);
            }
        }

        public void zza(OnStateChangedListener onstatechangedlistener)
        {
            zzaEC = onstatechangedlistener;
        }

        zza(SupportWalletFragment supportwalletfragment)
        {
            zzaED = supportwalletfragment;
        }
    }

    private static class zzb
        implements LifecycleDelegate
    {

        private final zzwb zzaEE;

        private int getState()
        {
            int i;
            try
            {
                i = zzaEE.getState();
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeException(remoteexception);
            }
            return i;
        }

        private void initialize(WalletFragmentInitParams walletfragmentinitparams)
        {
            try
            {
                zzaEE.initialize(walletfragmentinitparams);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (WalletFragmentInitParams walletfragmentinitparams)
            {
                throw new RuntimeException(walletfragmentinitparams);
            }
        }

        private void onActivityResult(int i, int j, Intent intent)
        {
            try
            {
                zzaEE.onActivityResult(i, j, intent);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent)
            {
                throw new RuntimeException(intent);
            }
        }

        private void setEnabled(boolean flag)
        {
            try
            {
                zzaEE.setEnabled(flag);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeException(remoteexception);
            }
        }

        private void updateMaskedWallet(MaskedWallet maskedwallet)
        {
            try
            {
                zzaEE.updateMaskedWallet(maskedwallet);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (MaskedWallet maskedwallet)
            {
                throw new RuntimeException(maskedwallet);
            }
        }

        private void updateMaskedWalletRequest(MaskedWalletRequest maskedwalletrequest)
        {
            try
            {
                zzaEE.updateMaskedWalletRequest(maskedwalletrequest);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (MaskedWalletRequest maskedwalletrequest)
            {
                throw new RuntimeException(maskedwalletrequest);
            }
        }

        static int zza(zzb zzb1)
        {
            return zzb1.getState();
        }

        static void zza(zzb zzb1, int i, int j, Intent intent)
        {
            zzb1.onActivityResult(i, j, intent);
        }

        static void zza(zzb zzb1, MaskedWallet maskedwallet)
        {
            zzb1.updateMaskedWallet(maskedwallet);
        }

        static void zza(zzb zzb1, MaskedWalletRequest maskedwalletrequest)
        {
            zzb1.updateMaskedWalletRequest(maskedwalletrequest);
        }

        static void zza(zzb zzb1, WalletFragmentInitParams walletfragmentinitparams)
        {
            zzb1.initialize(walletfragmentinitparams);
        }

        static void zza(zzb zzb1, boolean flag)
        {
            zzb1.setEnabled(flag);
        }

        public void onCreate(Bundle bundle)
        {
            try
            {
                zzaEE.onCreate(bundle);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                throw new RuntimeException(bundle);
            }
        }

        public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
        {
            try
            {
                layoutinflater = (View)com.google.android.gms.dynamic.zze.zzf(zzaEE.onCreateView(com.google.android.gms.dynamic.zze.zzn(layoutinflater), com.google.android.gms.dynamic.zze.zzn(viewgroup), bundle));
            }
            // Misplaced declaration of an exception variable
            catch (LayoutInflater layoutinflater)
            {
                throw new RuntimeException(layoutinflater);
            }
            return layoutinflater;
        }

        public void onDestroy()
        {
        }

        public void onDestroyView()
        {
        }

        public void onInflate(Activity activity, Bundle bundle, Bundle bundle1)
        {
            bundle = (WalletFragmentOptions)bundle.getParcelable("extraWalletFragmentOptions");
            try
            {
                zzaEE.zza(com.google.android.gms.dynamic.zze.zzn(activity), bundle, bundle1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Activity activity)
            {
                throw new RuntimeException(activity);
            }
        }

        public void onLowMemory()
        {
        }

        public void onPause()
        {
            try
            {
                zzaEE.onPause();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeException(remoteexception);
            }
        }

        public void onResume()
        {
            try
            {
                zzaEE.onResume();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeException(remoteexception);
            }
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            try
            {
                zzaEE.onSaveInstanceState(bundle);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                throw new RuntimeException(bundle);
            }
        }

        public void onStart()
        {
            try
            {
                zzaEE.onStart();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeException(remoteexception);
            }
        }

        public void onStop()
        {
            try
            {
                zzaEE.onStop();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeException(remoteexception);
            }
        }

        private zzb(zzwb zzwb1)
        {
            zzaEE = zzwb1;
        }

    }

    private class zzc extends com.google.android.gms.dynamic.zza
        implements android.view.View.OnClickListener
    {

        final SupportWalletFragment zzaEF;

        public void onClick(View view)
        {
            view = SupportWalletFragment.zza(zzaEF).getActivity();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(view), view, -1);
        }

        protected void zza(FrameLayout framelayout)
        {
            Button button = new Button(SupportWalletFragment.zza(zzaEF).getActivity());
            button.setText(com.google.android.gms.R.string.wallet_buy_button_place_holder);
            byte byte0 = -1;
            byte byte1 = -2;
            int j = byte1;
            int i = byte0;
            if (com.google.android.gms.wallet.fragment.SupportWalletFragment.zze(zzaEF) != null)
            {
                WalletFragmentStyle walletfragmentstyle = com.google.android.gms.wallet.fragment.SupportWalletFragment.zze(zzaEF).getFragmentStyle();
                j = byte1;
                i = byte0;
                if (walletfragmentstyle != null)
                {
                    android.util.DisplayMetrics displaymetrics = SupportWalletFragment.zza(zzaEF).getResources().getDisplayMetrics();
                    i = walletfragmentstyle.zza("buyButtonWidth", displaymetrics, -1);
                    j = walletfragmentstyle.zza("buyButtonHeight", displaymetrics, -2);
                }
            }
            button.setLayoutParams(new android.view.ViewGroup.LayoutParams(i, j));
            button.setOnClickListener(this);
            framelayout.addView(button);
        }

        protected void zza(zzf zzf1)
        {
            Object obj = SupportWalletFragment.zza(zzaEF).getActivity();
            if (SupportWalletFragment.zzb(zzaEF) == null && SupportWalletFragment.zzc(zzaEF) && obj != null)
            {
                try
                {
                    obj = zzwj.zza(((Activity) (obj)), SupportWalletFragment.zzd(zzaEF), com.google.android.gms.wallet.fragment.SupportWalletFragment.zze(zzaEF), com.google.android.gms.wallet.fragment.SupportWalletFragment.zzf(zzaEF));
                    SupportWalletFragment.zza(zzaEF, new zzb(((zzwb) (obj))));
                    SupportWalletFragment.zza(zzaEF, null);
                }
                // Misplaced declaration of an exception variable
                catch (zzf zzf1)
                {
                    return;
                }
                zzf1.zza(SupportWalletFragment.zzb(zzaEF));
                if (SupportWalletFragment.zzg(zzaEF) != null)
                {
                    zzb.zza(SupportWalletFragment.zzb(zzaEF), SupportWalletFragment.zzg(zzaEF));
                    SupportWalletFragment.zza(zzaEF, null);
                }
                if (com.google.android.gms.wallet.fragment.SupportWalletFragment.zzh(zzaEF) != null)
                {
                    zzb.zza(SupportWalletFragment.zzb(zzaEF), com.google.android.gms.wallet.fragment.SupportWalletFragment.zzh(zzaEF));
                    SupportWalletFragment.zza(zzaEF, null);
                }
                if (SupportWalletFragment.zzi(zzaEF) != null)
                {
                    zzb.zza(SupportWalletFragment.zzb(zzaEF), SupportWalletFragment.zzi(zzaEF));
                    SupportWalletFragment.zza(zzaEF, null);
                }
                if (SupportWalletFragment.zzj(zzaEF) != null)
                {
                    zzb.zza(SupportWalletFragment.zzb(zzaEF), SupportWalletFragment.zzj(zzaEF).booleanValue());
                    SupportWalletFragment.zza(zzaEF, null);
                }
            }
        }

        private zzc()
        {
            zzaEF = SupportWalletFragment.this;
            super();
        }

    }


    private boolean mCreated;
    private final Fragment zzPt = this;
    private MaskedWallet zzaEA;
    private Boolean zzaEB;
    private zzb zzaEt;
    private final zzh zzaEu = com.google.android.gms.dynamic.zzh.zza(this);
    private final zzc zzaEv = new zzc();
    private zza zzaEw;
    private WalletFragmentOptions zzaEx;
    private WalletFragmentInitParams zzaEy;
    private MaskedWalletRequest zzaEz;

    public SupportWalletFragment()
    {
        mCreated = false;
        zzaEw = new zza(this);
    }

    public static SupportWalletFragment newInstance(WalletFragmentOptions walletfragmentoptions)
    {
        SupportWalletFragment supportwalletfragment = new SupportWalletFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("extraWalletFragmentOptions", walletfragmentoptions);
        supportwalletfragment.zzPt.setArguments(bundle);
        return supportwalletfragment;
    }

    static Fragment zza(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzPt;
    }

    static MaskedWallet zza(SupportWalletFragment supportwalletfragment, MaskedWallet maskedwallet)
    {
        supportwalletfragment.zzaEA = maskedwallet;
        return maskedwallet;
    }

    static MaskedWalletRequest zza(SupportWalletFragment supportwalletfragment, MaskedWalletRequest maskedwalletrequest)
    {
        supportwalletfragment.zzaEz = maskedwalletrequest;
        return maskedwalletrequest;
    }

    static zzb zza(SupportWalletFragment supportwalletfragment, zzb zzb1)
    {
        supportwalletfragment.zzaEt = zzb1;
        return zzb1;
    }

    static WalletFragmentInitParams zza(SupportWalletFragment supportwalletfragment, WalletFragmentInitParams walletfragmentinitparams)
    {
        supportwalletfragment.zzaEy = walletfragmentinitparams;
        return walletfragmentinitparams;
    }

    static WalletFragmentOptions zza(SupportWalletFragment supportwalletfragment, WalletFragmentOptions walletfragmentoptions)
    {
        supportwalletfragment.zzaEx = walletfragmentoptions;
        return walletfragmentoptions;
    }

    static Boolean zza(SupportWalletFragment supportwalletfragment, Boolean boolean1)
    {
        supportwalletfragment.zzaEB = boolean1;
        return boolean1;
    }

    static zzb zzb(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEt;
    }

    static boolean zzc(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.mCreated;
    }

    static zzh zzd(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEu;
    }

    static WalletFragmentOptions zze(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEx;
    }

    static zza zzf(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEw;
    }

    static WalletFragmentInitParams zzg(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEy;
    }

    static MaskedWalletRequest zzh(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEz;
    }

    static MaskedWallet zzi(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEA;
    }

    static Boolean zzj(SupportWalletFragment supportwalletfragment)
    {
        return supportwalletfragment.zzaEB;
    }

    public int getState()
    {
        if (zzaEt != null)
        {
            return zzb.zza(zzaEt);
        } else
        {
            return 0;
        }
    }

    public void initialize(WalletFragmentInitParams walletfragmentinitparams)
    {
        if (zzaEt != null)
        {
            zzb.zza(zzaEt, walletfragmentinitparams);
            zzaEy = null;
        } else
        if (zzaEy == null)
        {
            zzaEy = walletfragmentinitparams;
            if (zzaEz != null)
            {
                Log.w("SupportWalletFragment", "updateMaskedWalletRequest() was called before initialize()");
            }
            if (zzaEA != null)
            {
                Log.w("SupportWalletFragment", "updateMaskedWallet() was called before initialize()");
                return;
            }
        } else
        {
            Log.w("SupportWalletFragment", "initialize(WalletFragmentInitParams) was called more than once. Ignoring.");
            return;
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (zzaEt != null)
        {
            zzb.zza(zzaEt, i, j, intent);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle == null) goto _L2; else goto _L1
_L1:
        bundle.setClassLoader(com/google/android/gms/wallet/fragment/WalletFragmentOptions.getClassLoader());
        WalletFragmentInitParams walletfragmentinitparams = (WalletFragmentInitParams)bundle.getParcelable("walletFragmentInitParams");
        if (walletfragmentinitparams != null)
        {
            if (zzaEy != null)
            {
                Log.w("SupportWalletFragment", "initialize(WalletFragmentInitParams) was called more than once.Ignoring.");
            }
            zzaEy = walletfragmentinitparams;
        }
        if (zzaEz == null)
        {
            zzaEz = (MaskedWalletRequest)bundle.getParcelable("maskedWalletRequest");
        }
        if (zzaEA == null)
        {
            zzaEA = (MaskedWallet)bundle.getParcelable("maskedWallet");
        }
        if (bundle.containsKey("walletFragmentOptions"))
        {
            zzaEx = (WalletFragmentOptions)bundle.getParcelable("walletFragmentOptions");
        }
        if (bundle.containsKey("enabled"))
        {
            zzaEB = Boolean.valueOf(bundle.getBoolean("enabled"));
        }
_L4:
        mCreated = true;
        zzaEv.onCreate(bundle);
        return;
_L2:
        if (zzPt.getArguments() != null)
        {
            WalletFragmentOptions walletfragmentoptions = (WalletFragmentOptions)zzPt.getArguments().getParcelable("extraWalletFragmentOptions");
            if (walletfragmentoptions != null)
            {
                walletfragmentoptions.zzao(zzPt.getActivity());
                zzaEx = walletfragmentoptions;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return zzaEv.onCreateView(layoutinflater, viewgroup, bundle);
    }

    public void onDestroy()
    {
        super.onDestroy();
        mCreated = false;
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        super.onInflate(activity, attributeset, bundle);
        if (zzaEx == null)
        {
            zzaEx = WalletFragmentOptions.zza(activity, attributeset);
        }
        attributeset = new Bundle();
        attributeset.putParcelable("attrKeyWalletFragmentOptions", zzaEx);
        zzaEv.onInflate(activity, attributeset, bundle);
    }

    public void onPause()
    {
        super.onPause();
        zzaEv.onPause();
    }

    public void onResume()
    {
        super.onResume();
        zzaEv.onResume();
        FragmentManager fragmentmanager = zzPt.getActivity().getSupportFragmentManager();
        Fragment fragment = fragmentmanager.findFragmentByTag("GooglePlayServicesErrorDialog");
        if (fragment != null)
        {
            fragmentmanager.beginTransaction().remove(fragment).commit();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(zzPt.getActivity()), zzPt.getActivity(), -1);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.setClassLoader(com/google/android/gms/wallet/fragment/WalletFragmentOptions.getClassLoader());
        zzaEv.onSaveInstanceState(bundle);
        if (zzaEy != null)
        {
            bundle.putParcelable("walletFragmentInitParams", zzaEy);
            zzaEy = null;
        }
        if (zzaEz != null)
        {
            bundle.putParcelable("maskedWalletRequest", zzaEz);
            zzaEz = null;
        }
        if (zzaEA != null)
        {
            bundle.putParcelable("maskedWallet", zzaEA);
            zzaEA = null;
        }
        if (zzaEx != null)
        {
            bundle.putParcelable("walletFragmentOptions", zzaEx);
            zzaEx = null;
        }
        if (zzaEB != null)
        {
            bundle.putBoolean("enabled", zzaEB.booleanValue());
            zzaEB = null;
        }
    }

    public void onStart()
    {
        super.onStart();
        zzaEv.onStart();
    }

    public void onStop()
    {
        super.onStop();
        zzaEv.onStop();
    }

    public void setEnabled(boolean flag)
    {
        if (zzaEt != null)
        {
            zzb.zza(zzaEt, flag);
            zzaEB = null;
            return;
        } else
        {
            zzaEB = Boolean.valueOf(flag);
            return;
        }
    }

    public void setOnStateChangedListener(OnStateChangedListener onstatechangedlistener)
    {
        zzaEw.zza(onstatechangedlistener);
    }

    public void updateMaskedWallet(MaskedWallet maskedwallet)
    {
        if (zzaEt != null)
        {
            zzb.zza(zzaEt, maskedwallet);
            zzaEA = null;
            return;
        } else
        {
            zzaEA = maskedwallet;
            return;
        }
    }

    public void updateMaskedWalletRequest(MaskedWalletRequest maskedwalletrequest)
    {
        if (zzaEt != null)
        {
            zzb.zza(zzaEt, maskedwalletrequest);
            zzaEz = null;
            return;
        } else
        {
            zzaEz = maskedwalletrequest;
            return;
        }
    }
}
