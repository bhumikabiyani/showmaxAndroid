// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.Defs;
import com.showmax.app.util.analytics.GoogleAnalyticsManager;
import com.showmax.lib.api.io.UserApi;
import com.showmax.lib.api.ui.widget.PurchaseAssetWebView;
import fr.castorflex.android.smoothprogressbar.SmoothProgressBar;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivityPurchaseAsset extends ActivityBase
    implements Defs
{

    public static final String BUNDLE_PROGRESSBAR_VISIBLE = "bundle.progressbar.visible";
    public static final String BUNDLE_PURCHASE_ASSET_ID = "bundle.purchase.asset.id";
    public static final int CODE_REQUEST_PURCHASE_ASSET = 301;
    public static final int CODE_RESULT_PURCHASE_ASSET_CANCELED = 303;
    public static final int CODE_RESULT_PURCHASE_ASSET_ERROR = 302;
    public static final boolean LOG = true;
    public static final String TAG = com/showmax/app/ui/ActivityPurchaseAsset.getSimpleName();
    private static int sStartEnterAnim = -1;
    private static int sStartExitAnim = -1;
    private static int sStopEnterAnim = -1;
    private static int sStopExitAnim = -1;
    private String mAssetId;
    private SmoothProgressBar mProgressBar;
    private PurchaseAssetWebView mPurchaseAssetWebView;
    private com.showmax.lib.api.ui.widget.PurchaseAssetWebView.PurchaseAssetWebViewListener mPurchaseAssetWebViewListener;

    public ActivityPurchaseAsset()
    {
        mPurchaseAssetWebViewListener = new com.showmax.lib.api.ui.widget.PurchaseAssetWebView.PurchaseAssetWebViewListener() {

            final ActivityPurchaseAsset this$0;

            public void onCloseButtonClicked()
            {
                setResult(303);
                finish();
            }

            public void onPageError(int i, String s, String s1)
            {
                setResult(302);
                finish();
            }

            public void onPageLoadingProgressChanged(int i)
            {
                if (i >= 0 && i < 100)
                {
                    mProgressBar.setVisibility(0);
                    return;
                } else
                {
                    mProgressBar.setVisibility(4);
                    return;
                }
            }

            
            {
                this$0 = ActivityPurchaseAsset.this;
                super();
            }
        };
    }

    private void initData(Bundle bundle)
    {
        Bundle bundle1 = bundle;
        if (bundle == null)
        {
            bundle1 = getIntent().getExtras();
        }
        mAssetId = bundle1.getString("bundle.purchase.asset.id");
    }

    private void initViews(Bundle bundle)
    {
        mPurchaseAssetWebView = (PurchaseAssetWebView)findViewById(0x7f0b00a9);
        mProgressBar = (SmoothProgressBar)findViewById(0x7f0b00a8);
        mPurchaseAssetWebView.setPurchaseAssetWebViewListener(mPurchaseAssetWebViewListener);
        if (bundle != null)
        {
            boolean flag = bundle.getBoolean("bundle.progressbar.visible");
            bundle = mProgressBar;
            int i;
            if (flag)
            {
                i = 0;
            } else
            {
                i = 4;
            }
            bundle.setVisibility(i);
        }
    }

    public static void startPurchaseAssetActivityForResult(int i, Activity activity, String s)
    {
        startPurchaseAssetActivityForResult(i, activity, s, -1, -1, -1, -1);
    }

    public static void startPurchaseAssetActivityForResult(int i, Activity activity, String s, int j, int k, int l, int i1)
    {
        Intent intent = new Intent(activity, com/showmax/app/ui/ActivityPurchaseAsset);
        intent.putExtra("bundle.purchase.asset.id", s);
        activity.startActivityForResult(intent, i);
        if (j > -1 && k > -1 && l > -1 && i1 > -1)
        {
            sStartEnterAnim = j;
            sStartExitAnim = k;
            sStopEnterAnim = l;
            sStopExitAnim = i1;
            activity.overridePendingTransition(sStartEnterAnim, sStartExitAnim);
        }
    }

    public void finish()
    {
        super.finish();
        if (sStopEnterAnim > -1 && sStopExitAnim > -1)
        {
            overridePendingTransition(sStopEnterAnim, sStopExitAnim);
        }
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        if (sStopEnterAnim > -1 && sStopExitAnim > -1)
        {
            overridePendingTransition(sStopEnterAnim, sStopExitAnim);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        MauLog.v("[ActivityPurchaseAsset]::[onCreate]");
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, false);
        setContentView(0x7f03001b);
        hideActionBarLogo();
        initData(bundle);
        initViews(bundle);
        if (bundle == null)
        {
            bundle = UserApi.getInstance().getPurchaseAssetUrl(mAssetId);
            mPurchaseAssetWebView.setGACookie(1, 2, false, GoogleAnalyticsManager.getClientId(getBaseContext()));
            mPurchaseAssetWebView.load(bundle, mAssetId);
            return;
        } else
        {
            mPurchaseAssetWebView.restoreState(bundle);
            return;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        return true;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (keyevent.getAction() == 0 && i == 4)
        {
            if (mPurchaseAssetWebView != null && mPurchaseAssetWebView.canGoBack())
            {
                mPurchaseAssetWebView.goBack();
            } else
            {
                finish();
            }
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        MauLog.v("[ActivityPurchaseAsset]::[onOptionsItemSelected]");
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        MauLog.v("[ActivityPurchaseAsset]::[onSaveInstanceState]");
        bundle.putString("bundle.purchase.asset.id", mAssetId);
        boolean flag;
        if (mProgressBar.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bundle.putBoolean("bundle.progressbar.visible", flag);
        mPurchaseAssetWebView.saveState(bundle);
        super.onSaveInstanceState(bundle);
    }


}
