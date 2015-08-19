// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.DataManager;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.io.event.FetchCategoriesFinishedEvent;
import com.showmax.app.ui.dialog.FilterDialogHelper;
import com.showmax.app.ui.fragment.FragmentSearch;
import com.showmax.app.ui.widget.SearchView;
import com.showmax.app.util.ActionBarHelper;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivitySearch extends ActivityBase
    implements com.showmax.app.ui.fragment.FragmentSearch.FragmentSearchListener
{
    private static abstract class SearchCallback extends ApiCallback
    {

        private String mQuery;

        public boolean match(String s)
        {
            boolean flag;
            if (mQuery != null && mQuery.equals(s))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            MauLog.v("[%s]::[SearchCallback]::[match]::[CallbackQuery: %s]::[CurrentQuery: %s]::[match: %b]", new Object[] {
                ActivitySearch.TAG, mQuery, s, Boolean.valueOf(flag)
            });
            return flag;
        }

        public SearchCallback(String s)
        {
            super(3);
            mQuery = s;
        }
    }


    public static final String ARGS_INITIAL_ASSET_TYPE = "args.initial.asset.type";
    public static final String ARGS_INITIAL_CATEGORY = "args.initial.category";
    public static final String ARGS_INITIAL_SEARCH_QUERY = "args.initial.search.query";
    public static final String ARGS_INITIAL_SECTION = "args.initial.section";
    public static final String SAVED_STATE_SEARCH_RESULT = "saved.state.search.result";
    public static final String TAG = com/showmax/app/ui/ActivitySearch.getSimpleName();
    private ArrayList mAvailableAssetTypes;
    private ArrayList mAvailableCategories;
    private ArrayList mAvailableSections;
    private com.showmax.app.ui.dialog.FilterDialogHelper.FilterDialogListener mFilterDialogListener;
    private FragmentSearch mFragmentSearch;
    private android.view.View.OnFocusChangeListener mOnSearchFocusChangeListener;
    private SearchCallback mSearchCallback;
    private android.widget.TextView.OnEditorActionListener mSearchOnEditorActionListener;
    private String mSearchQuery;
    private ArrayList mSearchResult;
    private TextWatcher mSearchTextWatcher;
    private SearchView mSearchView;
    private com.showmax.app.ui.widget.SearchView.SearchViewListener mSearchViewListener;
    private Category mSelectedCategory;
    private Section mSelectedSection;
    private com.showmax.lib.api.model.catalogue.Asset.Type mSelectedType;

    public ActivitySearch()
    {
        mSearchQuery = "";
        mSearchTextWatcher = new TextWatcher() {

            final ActivitySearch this$0;

            public void afterTextChanged(Editable editable)
            {
                MauLog.v("[%s]::[mSearchTextWatcher]::[afterTextChanged]::[%s]", new Object[] {
                    ActivitySearch.TAG, editable.toString()
                });
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                MauLog.v("[%s]::[mSearchTextWatcher]::[beforeTextChanged]::[%s]", new Object[] {
                    ActivitySearch.TAG, charsequence.toString()
                });
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                MauLog.v("[%s]::[mSearchTextWatcher]::[onTextChanged]::[%s]", new Object[] {
                    ActivitySearch.TAG, charsequence.toString()
                });
                mSearchQuery = charsequence.toString();
                startSearchQuery(mSearchQuery);
            }

            
            {
                this$0 = ActivitySearch.this;
                super();
            }
        };
        mSearchOnEditorActionListener = new android.widget.TextView.OnEditorActionListener() {

            final ActivitySearch this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 3)
                {
                    mSearchQuery = textview.getText().toString();
                    submitSearchQuery(mSearchQuery);
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = ActivitySearch.this;
                super();
            }
        };
        mOnSearchFocusChangeListener = new android.view.View.OnFocusChangeListener() {

            final ActivitySearch this$0;

            public void onFocusChange(View view, boolean flag)
            {
                MauLog.v("[%s]::[mOnSearchFocusChangeListener]::[onFocusChange]::[%b]", new Object[] {
                    ActivitySearch.TAG, Boolean.valueOf(flag)
                });
            }

            
            {
                this$0 = ActivitySearch.this;
                super();
            }
        };
        mSearchViewListener = new com.showmax.app.ui.widget.SearchView.SearchViewListener() {

            final ActivitySearch this$0;

            public void onKeyBoardHidden()
            {
                MauLog.v("[%s]::[mSearchViewListener]::[onKeyBoardHidden]", new Object[] {
                    ActivitySearch.TAG
                });
                hideKeyboard();
            }

            
            {
                this$0 = ActivitySearch.this;
                super();
            }
        };
        mFilterDialogListener = new com.showmax.app.ui.dialog.FilterDialogHelper.FilterDialogListener() {

            final ActivitySearch this$0;

            public void onCancel(int i)
            {
            }

            public void onFilterApplied(int i, Section section, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type)
            {
                MauLog.v("[%s]::[onFilterApplied]::[%s]::[%s]::[%s]", new Object[] {
                    ActivitySearch.TAG, section, category, type
                });
                mSelectedSection = section;
                mSelectedCategory = category;
                mSelectedType = type;
                mFragmentSearch.filter(mSelectedSection, mSelectedCategory, mSelectedType);
                getWindow().setSoftInputMode(3);
            }

            
            {
                this$0 = ActivitySearch.this;
                super();
            }
        };
    }

    private void cancelLastSearchCallback()
    {
        if (mSearchCallback != null)
        {
            mSearchCallback.cancel();
        }
    }

    private String fixQuery(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            return s.trim();
        }
    }

    private SearchCallback getNewSearchCallback(String s)
    {
        mSearchCallback = new SearchCallback(s) {

            final ActivitySearch this$0;

            public void failure(int i)
            {
                mSearchResult = null;
                if (isFragmentVisible(mFragmentSearch))
                {
                    mFragmentSearch.showMessage(0x7f0d00b9);
                }
                if (mSearchCallback != null)
                {
                    EventBus.getInstance().post(new ApiErrorEvent(mSearchCallback.getError()));
                }
            }

            public void success(AssetList assetlist, int i)
            {
                if (!isCanceled() && match(mSearchQuery) && isFragmentVisible(mFragmentSearch))
                {
                    mSearchResult = assetlist.items;
                    mFragmentSearch.showAssets(mSearchResult, UserPrefs.getSortOption(ActivitySearch.this));
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((AssetList)obj, i);
            }

            
            {
                this$0 = ActivitySearch.this;
                super(s);
            }
        };
        return mSearchCallback;
    }

    private void hideKeyboard()
    {
        MauLog.v("[%s]::[hideKeyboard]", new Object[] {
            TAG
        });
        InputMethodManager inputmethodmanager = (InputMethodManager)getSystemService("input_method");
        View view = getCurrentFocus();
        if (view == null)
        {
            return;
        } else
        {
            inputmethodmanager.hideSoftInputFromWindow(view.getWindowToken(), 2);
            view.clearFocus();
            return;
        }
    }

    private void initData(Bundle bundle)
    {
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            mSearchQuery = bundle1.getString("args.initial.search.query");
            mSelectedSection = (Section)bundle1.getParcelable("args.initial.section");
            mSelectedCategory = (Category)bundle1.getParcelable("args.initial.category");
            mSelectedType = (com.showmax.lib.api.model.catalogue.Asset.Type)bundle1.getSerializable("args.initial.asset.type");
        }
        if (bundle != null)
        {
            mSearchResult = bundle.getParcelableArrayList("saved.state.search.result");
        }
    }

    private void loadCategories()
    {
        DataManager.getInstance().fetchCategories(null, false);
    }

    private void showFilterDialog()
    {
        String s = TAG;
        Section section = mSelectedSection;
        Object obj;
        if (mSelectedCategory == null)
        {
            obj = null;
        } else
        {
            obj = mSelectedCategory.title;
        }
        MauLog.v("[%s]::[showFilterDialog]::[section: %s]::[category: %s]::[searchType: %s]", new Object[] {
            s, section, obj, mSelectedType
        });
        FilterDialogHelper.getInstance().showFilterDialog(this, 64, mAvailableSections, mSelectedSection, mAvailableCategories, mSelectedCategory, mAvailableAssetTypes, mSelectedType, mFilterDialogListener);
    }

    private void showKeyboard()
    {
        MauLog.v("[%s]::[showKeyboard]", new Object[] {
            TAG
        });
        getWindow().setSoftInputMode(4);
    }

    public static void startSearchActivity(Context context)
    {
        startSearchActivity(context, null, null, null, null);
    }

    public static void startSearchActivity(Context context, String s, Section section, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        MauLog.v("[%s]::[startSearchActivity]::[query: %s]", new Object[] {
            TAG, s
        });
        Intent intent = new Intent(context, com/showmax/app/ui/ActivitySearch);
        intent.putExtra("args.initial.search.query", s);
        intent.putExtra("args.initial.section", section);
        intent.putExtra("args.initial.category", category);
        intent.putExtra("args.initial.asset.type", type);
        context.startActivity(intent);
    }

    private void startSearchQuery(String s)
    {
label0:
        {
            MauLog.v("[%s]::[startSearchQuery]::[%s]", new Object[] {
                TAG, s
            });
            s = fixQuery(s);
            if (isFragmentVisible(mFragmentSearch))
            {
                mFragmentSearch.showAssets(null, UserPrefs.getSortOption(this));
                cancelLastSearchCallback();
                mSearchQuery = s;
                if (mSearchQuery != null && mSearchQuery.length() >= 1)
                {
                    break label0;
                }
                mFragmentSearch.showMessage(0x7f0d00b8);
            }
            return;
        }
        mFragmentSearch.showProgressbar();
        CatalogueApi.getInstance().loadAssets(null, null, null, null, mSearchQuery, Integer.valueOf(300), getNewSearchCallback(mSearchQuery));
        MauAnalytics.getInstance().onNavToSearch(mSearchQuery);
    }

    private void submitSearchQuery(String s)
    {
        startSearchQuery(s);
        hideKeyboard();
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MauFlurry.onNavSearch(this);
        setHasSlidingMenu(true);
        setHasToolbar(true, false);
        setContentView(0x7f030022);
        initData(bundle);
        if (bundle == null) goto _L2; else goto _L1
_L1:
        mFragmentSearch = (FragmentSearch)getSupportFragmentManager().findFragmentByTag(FragmentSearch.TAG);
_L4:
        if (!mFragmentSearch.isInLayout())
        {
            getSupportFragmentManager().beginTransaction().replace(0x7f0b00aa, mFragmentSearch, FragmentSearch.TAG).commit();
            getSupportFragmentManager().executePendingTransactions();
        }
        return;
_L2:
        if (mFragmentSearch == null)
        {
            mFragmentSearch = FragmentSearch.newInstance();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0002, menu);
        com.showmax.lib.api.utils.UserPrefs.SortOption sortoption = UserPrefs.getSortOption(this);
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC)
        {
            menu = menu.findItem(0x7f0b01d7);
        } else
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC)
        {
            menu = menu.findItem(0x7f0b01d8);
        } else
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST)
        {
            menu = menu.findItem(0x7f0b01d6);
        } else
        {
            menu = menu.findItem(0x7f0b01d5);
        }
        menu.setChecked(true);
        return true;
    }

    public void onEvent(FetchCategoriesFinishedEvent fetchcategoriesfinishedevent)
    {
        MauLog.v("[%s]::[onEvent]::[FetchCategoriesFinishedEvent]::[success: %b]", new Object[] {
            TAG, Boolean.valueOf(fetchcategoriesfinishedevent.success())
        });
        if (fetchcategoriesfinishedevent.success())
        {
            ArrayList arraylist = fetchcategoriesfinishedevent.getMovieCategories();
            ArrayList arraylist1 = fetchcategoriesfinishedevent.getTvSeriesCategories();
            if (arraylist == null)
            {
                fetchcategoriesfinishedevent = new ArrayList();
            } else
            {
                fetchcategoriesfinishedevent = arraylist;
                if (!arraylist.isEmpty())
                {
                    arraylist.remove(0);
                    fetchcategoriesfinishedevent = arraylist;
                }
            }
            if (arraylist1 == null)
            {
                arraylist = new ArrayList();
            } else
            {
                arraylist = arraylist1;
                if (!arraylist1.isEmpty())
                {
                    arraylist1.remove(0);
                    arraylist = arraylist1;
                }
            }
            mAvailableCategories = new ArrayList(fetchcategoriesfinishedevent);
            mAvailableCategories.addAll(arraylist);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag4 = true;
        boolean flag5 = true;
        boolean flag6 = true;
        boolean flag = true;
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131427797: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_NEWEST);
            if (menuitem.isChecked())
            {
                flag = false;
            }
            menuitem.setChecked(flag);
            return false;

        case 2131427798: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST);
            boolean flag1;
            if (!menuitem.isChecked())
            {
                flag1 = flag4;
            } else
            {
                flag1 = false;
            }
            menuitem.setChecked(flag1);
            return false;

        case 2131427799: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC);
            boolean flag2;
            if (!menuitem.isChecked())
            {
                flag2 = flag5;
            } else
            {
                flag2 = false;
            }
            menuitem.setChecked(flag2);
            return false;

        case 2131427800: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC);
            boolean flag3;
            if (!menuitem.isChecked())
            {
                flag3 = flag6;
            } else
            {
                flag3 = false;
            }
            menuitem.setChecked(flag3);
            return false;

        case 2131427801: 
            showFilterDialog();
            return true;
        }
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        mSearchView = mActionBarHelper.showSearch();
        mSearchView.addTextChangedListener(mSearchTextWatcher);
        mSearchView.setOnEditorActionListener(mSearchOnEditorActionListener);
        mSearchView.setOnFocusChangeListener(mOnSearchFocusChangeListener);
        mSearchView.setSearchViewListener(mSearchViewListener);
        mSearchView.requestFocus();
        mAvailableSections = ShowMaxApp.getInstance().getAvailableSections();
        mAvailableAssetTypes = new ArrayList();
        mAvailableAssetTypes.add(com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE);
        mAvailableAssetTypes.add(com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES);
        loadCategories();
        if (mSearchResult != null && !mSearchResult.isEmpty() && mFragmentSearch != null && isFragmentVisible(mFragmentSearch))
        {
            mFragmentSearch.showAssets(mSearchResult, UserPrefs.getSortOption(this));
        }
    }

    protected void onResume()
    {
        super.onResume();
        if (mSearchQuery != null && !mSearchQuery.isEmpty())
        {
            mSearchView.setText(mSearchQuery);
            submitSearchQuery(mSearchQuery);
        }
        if (!mSearchView.hasFocus())
        {
            getWindow().setSoftInputMode(3);
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        if (mSearchResult != null)
        {
            bundle.putParcelableArrayList("saved.state.search.result", mSearchResult);
        }
        super.onSaveInstanceState(bundle);
    }

    public void onScrollStateChanged(boolean flag)
    {
        hideKeyboard();
    }

    protected void onStart()
    {
        EventBus.getInstance().register(this);
        super.onStart();
    }

    protected void onStop()
    {
        EventBus.getInstance().unregister(this);
        super.onStop();
    }




/*
    static String access$002(ActivitySearch activitysearch, String s)
    {
        activitysearch.mSearchQuery = s;
        return s;
    }

*/







/*
    static ArrayList access$502(ActivitySearch activitysearch, ArrayList arraylist)
    {
        activitysearch.mSearchResult = arraylist;
        return arraylist;
    }

*/




/*
    static Section access$702(ActivitySearch activitysearch, Section section)
    {
        activitysearch.mSelectedSection = section;
        return section;
    }

*/



/*
    static Category access$802(ActivitySearch activitysearch, Category category)
    {
        activitysearch.mSelectedCategory = category;
        return category;
    }

*/



/*
    static com.showmax.lib.api.model.catalogue.Asset.Type access$902(ActivitySearch activitysearch, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        activitysearch.mSelectedType = type;
        return type;
    }

*/
}
