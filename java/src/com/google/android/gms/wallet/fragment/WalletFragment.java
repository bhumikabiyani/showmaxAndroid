// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.RemoteException;
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
import com.google.android.gms.dynamic.zzb;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzwb;
import com.google.android.gms.internal.zzwj;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentOptions, WalletFragmentInitParams, WalletFragmentStyle

public final class WalletFragment extends Fragment
{
    public static interface OnStateChangedListener
    {

        public abstract void onStateChanged(WalletFragment walletfragment, int i, int j, Bundle bundle);
    }

    static class zza extends com.google.android.gms.internal.zzwc.zza
    {

        private OnStateChangedListener zzaEK;
        private final WalletFragment zzaEL;

        public void zza(int i, int j, Bundle bundle)
        {
            if (zzaEK != null)
            {
                zzaEK.onStateChanged(zzaEL, i, j, bundle);
            }
        }

        public void zza(OnStateChangedListener onstatechangedlistener)
        {
            zzaEK = onstatechangedlistener;
        }

        zza(WalletFragment walletfragment)
        {
            zzaEL = walletfragment;
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

        final WalletFragment zzaEM;

        public void onClick(View view)
        {
            view = WalletFragment.zza(zzaEM).getActivity();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(view), view, -1);
        }

        protected void zza(FrameLayout framelayout)
        {
            Button button = new Button(WalletFragment.zza(zzaEM).getActivity());
            button.setText(com.google.android.gms.R.string.wallet_buy_button_place_holder);
            byte byte0 = -1;
            byte byte1 = -2;
            int j = byte1;
            int i = byte0;
            if (com.google.android.gms.wallet.fragment.WalletFragment.zze(zzaEM) != null)
            {
                WalletFragmentStyle walletfragmentstyle = com.google.android.gms.wallet.fragment.WalletFragment.zze(zzaEM).getFragmentStyle();
                j = byte1;
                i = byte0;
                if (walletfragmentstyle != null)
                {
                    android.util.DisplayMetrics displaymetrics = WalletFragment.zza(zzaEM).getResources().getDisplayMetrics();
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
            Object obj = WalletFragment.zza(zzaEM).getActivity();
            if (com.google.android.gms.wallet.fragment.WalletFragment.zzb(zzaEM) == null && WalletFragment.zzc(zzaEM) && obj != null)
            {
                try
                {
                    obj = zzwj.zza(((Activity) (obj)), WalletFragment.zzd(zzaEM), com.google.android.gms.wallet.fragment.WalletFragment.zze(zzaEM), com.google.android.gms.wallet.fragment.WalletFragment.zzf(zzaEM));
                    WalletFragment.zza(zzaEM, new zzb(((zzwb) (obj))));
                    WalletFragment.zza(zzaEM, null);
                }
                // Misplaced declaration of an exception variable
                catch (zzf zzf1)
                {
                    return;
                }
                zzf1.zza(com.google.android.gms.wallet.fragment.WalletFragment.zzb(zzaEM));
                if (WalletFragment.zzg(zzaEM) != null)
                {
                    zzb.zza(com.google.android.gms.wallet.fragment.WalletFragment.zzb(zzaEM), WalletFragment.zzg(zzaEM));
                    WalletFragment.zza(zzaEM, null);
                }
                if (WalletFragment.zzh(zzaEM) != null)
                {
                    zzb.zza(com.google.android.gms.wallet.fragment.WalletFragment.zzb(zzaEM), WalletFragment.zzh(zzaEM));
                    WalletFragment.zza(zzaEM, null);
                }
                if (WalletFragment.zzi(zzaEM) != null)
                {
                    zzb.zza(com.google.android.gms.wallet.fragment.WalletFragment.zzb(zzaEM), WalletFragment.zzi(zzaEM));
                    WalletFragment.zza(zzaEM, null);
                }
                if (WalletFragment.zzj(zzaEM) != null)
                {
                    zzb.zza(com.google.android.gms.wallet.fragment.WalletFragment.zzb(zzaEM), WalletFragment.zzj(zzaEM).booleanValue());
                    WalletFragment.zza(zzaEM, null);
                }
            }
        }

        private zzc()
        {
            zzaEM = WalletFragment.this;
            super();
        }

    }


    private boolean mCreated;
    private final Fragment zzXZ = this;
    private MaskedWallet zzaEA;
    private Boolean zzaEB;
    private zzb zzaEG;
    private final com.google.android.gms.dynamic.zzb zzaEH = com.google.android.gms.dynamic.zzb.zza(this);
    private final zzc zzaEI = new zzc();
    private zza zzaEJ;
    private WalletFragmentOptions zzaEx;
    private WalletFragmentInitParams zzaEy;
    private MaskedWalletRequest zzaEz;

    public WalletFragment()
    {
        mCreated = false;
        zzaEJ = new zza(this);
    }

    public static WalletFragment newInstance(WalletFragmentOptions walletfragmentoptions)
    {
        WalletFragment walletfragment = new WalletFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("extraWalletFragmentOptions", walletfragmentoptions);
        walletfragment.zzXZ.setArguments(bundle);
        return walletfragment;
    }

    static Fragment zza(WalletFragment walletfragment)
    {
        return walletfragment.zzXZ;
    }

    static MaskedWallet zza(WalletFragment walletfragment, MaskedWallet maskedwallet)
    {
        walletfragment.zzaEA = maskedwallet;
        return maskedwallet;
    }

    static MaskedWalletRequest zza(WalletFragment walletfragment, MaskedWalletRequest maskedwalletrequest)
    {
        walletfragment.zzaEz = maskedwalletrequest;
        return maskedwalletrequest;
    }

    static zzb zza(WalletFragment walletfragment, zzb zzb1)
    {
        walletfragment.zzaEG = zzb1;
        return zzb1;
    }

    static WalletFragmentInitParams zza(WalletFragment walletfragment, WalletFragmentInitParams walletfragmentinitparams)
    {
        walletfragment.zzaEy = walletfragmentinitparams;
        return walletfragmentinitparams;
    }

    static WalletFragmentOptions zza(WalletFragment walletfragment, WalletFragmentOptions walletfragmentoptions)
    {
        walletfragment.zzaEx = walletfragmentoptions;
        return walletfragmentoptions;
    }

    static Boolean zza(WalletFragment walletfragment, Boolean boolean1)
    {
        walletfragment.zzaEB = boolean1;
        return boolean1;
    }

    static zzb zzb(WalletFragment walletfragment)
    {
        return walletfragment.zzaEG;
    }

    static boolean zzc(WalletFragment walletfragment)
    {
        return walletfragment.mCreated;
    }

    static com.google.android.gms.dynamic.zzb zzd(WalletFragment walletfragment)
    {
        return walletfragment.zzaEH;
    }

    static WalletFragmentOptions zze(WalletFragment walletfragment)
    {
        return walletfragment.zzaEx;
    }

    static zza zzf(WalletFragment walletfragment)
    {
        return walletfragment.zzaEJ;
    }

    static WalletFragmentInitParams zzg(WalletFragment walletfragment)
    {
        return walletfragment.zzaEy;
    }

    static MaskedWalletRequest zzh(WalletFragment walletfragment)
    {
        return walletfragment.zzaEz;
    }

    static MaskedWallet zzi(WalletFragment walletfragment)
    {
        return walletfragment.zzaEA;
    }

    static Boolean zzj(WalletFragment walletfragment)
    {
        return walletfragment.zzaEB;
    }

    public int getState()
    {
        if (zzaEG != null)
        {
            return zzb.zza(zzaEG);
        } else
        {
            return 0;
        }
    }

    public void initialize(WalletFragmentInitParams walletfragmentinitparams)
    {
        if (zzaEG != null)
        {
            zzb.zza(zzaEG, walletfragmentinitparams);
            zzaEy = null;
        } else
        if (zzaEy == null)
        {
            zzaEy = walletfragmentinitparams;
            if (zzaEz != null)
            {
                Log.w("WalletFragment", "updateMaskedWalletRequest() was called before initialize()");
            }
            if (zzaEA != null)
            {
                Log.w("WalletFragment", "updateMaskedWallet() was called before initialize()");
                return;
            }
        } else
        {
            Log.w("WalletFragment", "initialize(WalletFragmentInitParams) was called more than once. Ignoring.");
            return;
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (zzaEG != null)
        {
            zzb.zza(zzaEG, i, j, intent);
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
                Log.w("WalletFragment", "initialize(WalletFragmentInitParams) was called more than once.Ignoring.");
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
        zzaEI.onCreate(bundle);
        return;
_L2:
        if (zzXZ.getArguments() != null)
        {
            WalletFragmentOptions walletfragmentoptions = (WalletFragmentOptions)zzXZ.getArguments().getParcelable("extraWalletFragmentOptions");
            if (walletfragmentoptions != null)
            {
                walletfragmentoptions.zzao(zzXZ.getActivity());
                zzaEx = walletfragmentoptions;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return zzaEI.onCreateView(layoutinflater, viewgroup, bundle);
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
        zzaEI.onInflate(activity, attributeset, bundle);
    }

    public void onPause()
    {
        super.onPause();
        zzaEI.onPause();
    }

    public void onResume()
    {
        super.onResume();
        zzaEI.onResume();
        FragmentManager fragmentmanager = zzXZ.getActivity().getFragmentManager();
        Fragment fragment = fragmentmanager.findFragmentByTag("GooglePlayServicesErrorDialog");
        if (fragment != null)
        {
            fragmentmanager.beginTransaction().remove(fragment).commit();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(zzXZ.getActivity()), zzXZ.getActivity(), -1);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.setClassLoader(com/google/android/gms/wallet/fragment/WalletFragmentOptions.getClassLoader());
        zzaEI.onSaveInstanceState(bundle);
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
        zzaEI.onStart();
    }

    public void onStop()
    {
        super.onStop();
        zzaEI.onStop();
    }

    public void setEnabled(boolean flag)
    {
        if (zzaEG != null)
        {
            zzb.zza(zzaEG, flag);
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
        zzaEJ.zza(onstatechangedlistener);
    }

    public void updateMaskedWallet(MaskedWallet maskedwallet)
    {
        if (zzaEG != null)
        {
            zzb.zza(zzaEG, maskedwallet);
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
        if (zzaEG != null)
        {
            zzb.zza(zzaEG, maskedwalletrequest);
            zzaEz = null;
            return;
        } else
        {
            zzaEz = maskedwalletrequest;
            return;
        }
    }
}
