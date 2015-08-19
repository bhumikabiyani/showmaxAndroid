// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.os.AsyncTask;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.UserApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.model.catalogue.SectionList;
import com.showmax.lib.api.model.user.UserProfile;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.model.user.userlist.v2.UserlistList;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import retrofit.RetrofitError;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySplash

public class this._cls0 extends AsyncTask
{

    public static final int INIT_TASK_FAILURE = 1;
    public static final int INIT_TASK_SUCCESS = 0;
    final ActivitySplash this$0;

    protected transient Integer doInBackground(Void avoid[])
    {
        Object obj;
        MauLog.v("[ActivitySplash]::[InitTask]::[doInBackground]");
        obj = UserPrefs.getCurrentLanguage(getApplicationContext());
        avoid = ShowMaxApp.getInstance();
        Object obj1;
        Object obj2;
        obj2 = CatalogueApi.getInstance().loadSections();
        obj1 = ((SectionList) (obj2)).items;
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        if (!((ArrayList) (obj1)).isEmpty())
        {
            break MISSING_BLOCK_LABEL_55;
        }
        MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[setions not loaded]");
        return Integer.valueOf(1);
        MauLog.v("[ActivitySplash]::[InitTask]::[doInBackground]::[sections loaded: %d]", new Object[] {
            Integer.valueOf(((SectionList) (obj2)).count)
        });
        avoid.setAvailableSections(((ArrayList) (obj1)));
        obj2 = UserPrefs.getCurrentSection(getApplicationContext());
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        if (((ArrayList) (obj1)).contains(obj2))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        obj1 = (Section)((ArrayList) (obj1)).get(0);
        UserPrefs.setCurrentSection(getApplicationContext(), ((Section) (obj1)));
        avoid.initAvailableLanguages(CatalogueApi.getInstance().loadAvailableLanguages(((com.showmax.lib.api.io.) (obj))));
        avoid.setSubscriptionPricelistList(CatalogueApi.getInstance().loadSubscriptionPricelist());
        if (!UserPrefs.isUserSignedIn(getApplicationContext()))
        {
            break MISSING_BLOCK_LABEL_431;
        }
        obj2 = UserPrefs.getUserAccessData(getApplicationContext())[0];
        obj1 = UserApi.getInstance().loadUserDetail(((String) (obj2)), ((com.showmax.lib.api.io.) (obj)));
        MauLog.i("[ActivitySplash]::[InitTask]::[doInBackground]::[loadUserDetail]::[subscriptionStatus: %s]", new Object[] {
            ((UserProfile) (obj1)).subscriptionStatus
        });
        avoid.setSubscriptionStatus(((UserProfile) (obj1)).subscriptionStatus);
        UserPrefs.setUserId(getApplicationContext(), ((UserProfile) (obj1)).userId);
        UserPrefs.setUserEmail(getApplicationContext(), ((UserProfile) (obj1)).email);
        Userlist userlist;
        for (obj2 = UserApi.getInstance().loadUserlistsV2(((String) (obj2)), ((UserProfile) (obj1)).userId).items.iterator(); ((Iterator) (obj2)).hasNext(); UserPrefs.setUserlist(getApplicationContext(), userlist))
        {
            userlist = (Userlist)((Iterator) (obj2)).next();
        }

          goto _L1
        obj;
        int i;
        if (((RetrofitError) (obj)).getResponse() == null)
        {
            i = -1;
        } else
        {
            try
            {
                i = ((RetrofitError) (obj)).getResponse().getStatus();
            }
            // Misplaced declaration of an exception variable
            catch (Void avoid[])
            {
                if (avoid.getResponse() != null)
                {
                    int j;
                    if (avoid.getResponse() == null)
                    {
                        j = -1;
                    } else
                    {
                        j = avoid.getResponse().getStatus();
                    }
                    MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[error %d]", new Object[] {
                        Integer.valueOf(j)
                    });
                } else
                {
                    MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[error unknown]");
                }
                EventBus.getInstance().post(new ApiErrorEvent(avoid));
                return Integer.valueOf(1);
            }
        }
        MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[loadUserDetail]::[error %d]", new Object[] {
            Integer.valueOf(i)
        });
        UserPrefs.removeUserAccessData(getApplicationContext());
        UserApi.getInstance().removeAuthCookies();
        avoid.setSubscriptionStatus(null);
        EventBus.getInstance().post(new ApiErrorEvent(((RetrofitError) (obj))));
_L2:
        return Integer.valueOf(0);
_L1:
        obj1 = ((UserProfile) (obj1)).partner;
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_407;
        }
        if (((String) (obj1)).isEmpty())
        {
            break MISSING_BLOCK_LABEL_407;
        }
        obj = UserApi.getInstance().loadBrandingPartner(((String) (obj1)), ((com.showmax.lib.api.io.) (obj)));
        avoid.setBrandingPartner(((com.showmax.lib.api.model.user.BrandingPartner) (obj)));
        MauLog.i("[ActivitySplash]::[InitTask]::[doInBackground]::[loadBranding]::[brandingPartner: %s]", new Object[] {
            obj
        });
          goto _L2
        MauLog.i("[ActivitySplash]::[InitTask]::[doInBackground]::[loadBranding]::[no branding to load]", new Object[0]);
          goto _L2
        avoid.setSubscriptionStatus(com.showmax.lib.api.model.user.Status.FREE);
          goto _L2
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(Integer integer)
    {
        if (integer.intValue() != 0)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        ActivitySplash.access$402(ActivitySplash.this, ActivitySplash.access$500(ActivitySplash.this));
        if (ActivitySplash.access$400(ActivitySplash.this) == null)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        if (ActivitySplash.access$400(ActivitySplash.this).type != com.showmax.lib.api.utils.H) goto _L2; else goto _L1
_L1:
        startMainActivity(true, ActivitySplash.access$400(ActivitySplash.this));
_L4:
        return;
_L2:
        if (ActivitySplash.access$400(ActivitySplash.this).type != com.showmax.lib.api.utils. && ActivitySplash.access$400(ActivitySplash.this).type != com.showmax.lib.api.utils.DE && ActivitySplash.access$400(ActivitySplash.this).type != com.showmax.lib.api.utils.RIE && ActivitySplash.access$400(ActivitySplash.this).type != com.showmax.lib.api.utils.N) goto _L4; else goto _L3
_L3:
        integer = UserPrefs.getCurrentLanguage(getApplicationContext());
        CatalogueApi.getInstance().loadAssetById(ActivitySplash.access$400(ActivitySplash.this).assetId, integer, ActivitySplash.access$600(ActivitySplash.this));
        return;
        startMainActivity(true, null);
        return;
        ActivitySplash.access$700(ActivitySplash.this, 59);
        return;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Integer)obj);
    }

    public e()
    {
        this$0 = ActivitySplash.this;
        super();
    }
}
