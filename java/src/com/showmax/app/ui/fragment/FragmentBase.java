// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.util.MauUtils;
import com.showmax.lib.api.model.catalogue.Asset;

public abstract class FragmentBase extends Fragment
{
    public static interface OnAssetClickListener
    {

        public abstract void onAssetClick(Asset asset);
    }


    private boolean mTablet;

    public FragmentBase()
    {
    }

    private String getLogTag()
    {
        return (new StringBuilder()).append(getSuccessorLogTag()).append(".BASE").toString();
    }

    protected abstract String getSuccessorLogTag();

    public boolean isTablet()
    {
        return mTablet;
    }

    public void onActivityCreated(Bundle bundle)
    {
        MauLog.v("[%s]::[onActivityCreated]", new Object[] {
            getLogTag()
        });
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity)
    {
        MauLog.v("[%s]::[onAttach]", new Object[] {
            getLogTag()
        });
        super.onAttach(activity);
    }

    public void onCreate(Bundle bundle)
    {
        MauLog.v("[%s]::[onCreate]", new Object[] {
            getLogTag()
        });
        super.onCreate(bundle);
        mTablet = MauUtils.isTablet(getActivity());
    }

    public void onDestroy()
    {
        MauLog.v("[%s]::[onDestroy]", new Object[] {
            getLogTag()
        });
        super.onDestroy();
    }

    public void onDestroyView()
    {
        MauLog.v("[%s]::[onDestroyView]", new Object[] {
            getLogTag()
        });
        super.onDestroyView();
    }

    public void onDetach()
    {
        MauLog.v("[%s]::[onDetach]", new Object[] {
            getLogTag()
        });
        super.onDetach();
    }

    public void onPause()
    {
        MauLog.v("[%s]::[onPause]", new Object[] {
            getLogTag()
        });
        super.onPause();
    }

    public void onResume()
    {
        MauLog.v("[%s]::[onResume]", new Object[] {
            getLogTag()
        });
        super.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        MauLog.v("[%s]::[onSaveInstanceState]", new Object[] {
            getLogTag()
        });
        super.onSaveInstanceState(bundle);
    }

    public void onStart()
    {
        MauLog.v("[%s]::[onStart]", new Object[] {
            getLogTag()
        });
        super.onStart();
    }

    public void onStop()
    {
        MauLog.v("[%s]::[onStop]", new Object[] {
            getLogTag()
        });
        super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        MauLog.v("[%s]::[onViewCreated]", new Object[] {
            getLogTag()
        });
        super.onViewCreated(view, bundle);
    }
}
