// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import com.afollestad.materialdialogs.MaterialDialog;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;

public class FilterDialogHelper
{
    public static interface FilterDialogListener
    {

        public abstract void onCancel(int i);

        public abstract void onFilterApplied(int i, Section section, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type);
    }


    public static final int SEARCH_OPTIONS_DIALOG = 64;
    private static final String TAG = com/showmax/app/ui/dialog/FilterDialogHelper.getSimpleName();
    private static FilterDialogHelper sInstance;
    private String mAllStr;
    private ArrayList mAssetTypes;
    private ArrayAdapter mAssetTypesAdapter;
    private Spinner mAssetTypesSpinner;
    private ArrayList mCategories;
    private ArrayAdapter mCategoriesAdapter;
    private Spinner mCategoriesSpinner;
    private FilterDialogListener mFilterDialogListener;
    private String mMoviesStr;
    private android.widget.AdapterView.OnItemSelectedListener mOnSpinnerItemSelectedListener;
    private ArrayList mSections;
    private ArrayAdapter mSectionsAdapter;
    private Spinner mSectionsSpinner;
    private com.showmax.lib.api.model.catalogue.Asset.Type mSelectedAssetType;
    private Category mSelectedCategory;
    private Section mSelectedSection;
    private String mSeriesStr;
    private int mType;

    private FilterDialogHelper()
    {
        mOnSpinnerItemSelectedListener = new android.widget.AdapterView.OnItemSelectedListener() {

            final FilterDialogHelper this$0;

            public void onItemSelected(AdapterView adapterview, View view, int i, long l)
            {
                switch (adapterview.getId())
                {
                default:
                    return;

                case 2131427550: 
                    mSelectedSection = (Section)mSections.get(i);
                    return;

                case 2131427551: 
                    mSelectedCategory = (Category)mCategories.get(i);
                    return;

                case 2131427552: 
                    mSelectedAssetType = (com.showmax.lib.api.model.catalogue.Asset.Type)mAssetTypes.get(i);
                    break;
                }
            }

            public void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                this$0 = FilterDialogHelper.this;
                super();
            }
        };
    }

    private String assetTypeToString(com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        if (type == null)
        {
            return mAllStr;
        }
        static class _cls4
        {

            static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[];

            static 
            {
                $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type = new int[com.showmax.lib.api.model.catalogue.Asset.Type.values().length];
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls4..SwitchMap.com.showmax.lib.api.model.catalogue.Asset.Type[type.ordinal()])
        {
        default:
            return mAllStr;

        case 1: // '\001'
            return mMoviesStr;

        case 2: // '\002'
            return mSeriesStr;
        }
    }

    private String[] assetTypesToStringArray(ArrayList arraylist)
    {
        String as[];
        if (arraylist != null && !arraylist.isEmpty())
        {
            String as1[] = new String[arraylist.size()];
            int i = 0;
            do
            {
                as = as1;
                if (i >= arraylist.size())
                {
                    break;
                }
                as1[i] = assetTypeToString((com.showmax.lib.api.model.catalogue.Asset.Type)arraylist.get(i));
                i++;
            } while (true);
        } else
        {
            as = null;
        }
        return as;
    }

    private String[] categoriesToStringArray(ArrayList arraylist)
    {
        String as[];
        if (arraylist != null && !arraylist.isEmpty())
        {
            String as1[] = new String[arraylist.size()];
            int i = 0;
            do
            {
                as = as1;
                if (i >= arraylist.size())
                {
                    break;
                }
                as1[i] = categoryToString((Category)arraylist.get(i));
                i++;
            } while (true);
        } else
        {
            as = null;
        }
        return as;
    }

    private String categoryToString(Category category)
    {
        if (category == null)
        {
            return mAllStr;
        } else
        {
            return category.title;
        }
    }

    private void cleanUp()
    {
        mSectionsSpinner = null;
        mCategoriesSpinner = null;
        mAssetTypesSpinner = null;
        mSections = null;
        mCategories = null;
        mAssetTypes = null;
        mSectionsAdapter = null;
        mCategoriesAdapter = null;
        mAssetTypesAdapter = null;
        mSelectedSection = null;
        mSelectedCategory = null;
        mSelectedAssetType = null;
        mAllStr = null;
        mMoviesStr = null;
        mSeriesStr = null;
        sInstance = null;
    }

    public static FilterDialogHelper getInstance()
    {
        if (sInstance == null)
        {
            sInstance = new FilterDialogHelper();
        }
        return sInstance;
    }

    private void initSpinners(View view)
    {
        mSectionsSpinner = (Spinner)view.findViewById(0x7f0b00de);
        mCategoriesSpinner = (Spinner)view.findViewById(0x7f0b00df);
        mAssetTypesSpinner = (Spinner)view.findViewById(0x7f0b00e0);
        mSectionsAdapter = new ArrayAdapter(view.getContext(), 0x1090008, sectionsToStringArray(mSections));
        mSectionsAdapter.setDropDownViewResource(0x1090009);
        mSectionsSpinner.setAdapter(mSectionsAdapter);
        mSectionsSpinner.setSelection(mSections.indexOf(mSelectedSection));
        mSectionsSpinner.setOnItemSelectedListener(mOnSpinnerItemSelectedListener);
        mCategoriesAdapter = new ArrayAdapter(view.getContext(), 0x1090008, categoriesToStringArray(mCategories));
        mCategoriesAdapter.setDropDownViewResource(0x1090009);
        mCategoriesSpinner.setAdapter(mCategoriesAdapter);
        mCategoriesSpinner.setSelection(mCategories.indexOf(mSelectedCategory));
        mCategoriesSpinner.setOnItemSelectedListener(mOnSpinnerItemSelectedListener);
        mAssetTypesAdapter = new ArrayAdapter(view.getContext(), 0x1090008, assetTypesToStringArray(mAssetTypes));
        mAssetTypesAdapter.setDropDownViewResource(0x1090009);
        mAssetTypesSpinner.setAdapter(mAssetTypesAdapter);
        mAssetTypesSpinner.setSelection(mAssetTypes.indexOf(mSelectedAssetType));
        mAssetTypesSpinner.setOnItemSelectedListener(mOnSpinnerItemSelectedListener);
    }

    private void notifyFilterListener()
    {
        if (mFilterDialogListener != null)
        {
            mFilterDialogListener.onFilterApplied(mType, mSelectedSection, mSelectedCategory, mSelectedAssetType);
        }
    }

    private String sectionToString(Section section)
    {
        if (section == null)
        {
            return mAllStr;
        } else
        {
            return section.name;
        }
    }

    private String[] sectionsToStringArray(ArrayList arraylist)
    {
        String as[];
        if (arraylist != null && !arraylist.isEmpty())
        {
            String as1[] = new String[arraylist.size()];
            int i = 0;
            do
            {
                as = as1;
                if (i >= arraylist.size())
                {
                    break;
                }
                as1[i] = sectionToString((Section)arraylist.get(i));
                i++;
            } while (true);
        } else
        {
            as = null;
        }
        return as;
    }

    private void setSpinnerData(ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2)
    {
        ArrayList arraylist3 = arraylist;
        if (arraylist == null)
        {
            arraylist3 = new ArrayList();
        }
        arraylist = arraylist1;
        if (arraylist1 == null)
        {
            arraylist = new ArrayList();
        }
        arraylist1 = arraylist2;
        if (arraylist2 == null)
        {
            arraylist1 = new ArrayList();
        }
        mSections = new ArrayList();
        if (arraylist3 != null)
        {
            mSections.addAll(arraylist3);
        }
        mSections.add(0, null);
        mCategories = new ArrayList();
        if (arraylist3 != null)
        {
            mCategories.addAll(arraylist);
        }
        mCategories.add(0, null);
        mAssetTypes = new ArrayList();
        if (arraylist3 != null)
        {
            mAssetTypes.addAll(arraylist1);
        }
        mAssetTypes.add(0, null);
    }

    public void showFilterDialog(Context context, int i, ArrayList arraylist, Section section, ArrayList arraylist1, Category category, ArrayList arraylist2, 
            com.showmax.lib.api.model.catalogue.Asset.Type type, FilterDialogListener filterdialoglistener)
    {
        mAllStr = context.getString(0x7f0d0021);
        mMoviesStr = context.getString(0x7f0d00bb);
        mSeriesStr = context.getString(0x7f0d00d6);
        mType = i;
        setSpinnerData(arraylist, arraylist1, arraylist2);
        mFilterDialogListener = filterdialoglistener;
        mSelectedSection = section;
        mSelectedCategory = category;
        mSelectedAssetType = type;
        context = new com.afollestad.materialdialogs.MaterialDialog.Builder(context);
        context.customView(0x7f03003e, false);
        context.positiveText(0x7f0d0060);
        context.negativeText(0x7f0d0058);
        context.callback(new com.afollestad.materialdialogs.MaterialDialog.ButtonCallback() {

            final FilterDialogHelper this$0;

            public void onNegative(MaterialDialog materialdialog)
            {
                if (mFilterDialogListener != null)
                {
                    mFilterDialogListener.onCancel(mType);
                }
            }

            public void onPositive(MaterialDialog materialdialog)
            {
                notifyFilterListener();
            }

            
            {
                this$0 = FilterDialogHelper.this;
                super();
            }
        });
        context.dismissListener(new android.content.DialogInterface.OnDismissListener() {

            final FilterDialogHelper this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                cleanUp();
            }

            
            {
                this$0 = FilterDialogHelper.this;
                super();
            }
        });
        context = context.build();
        initSpinners(context.getCustomView());
        context.show();
    }







/*
    static Section access$402(FilterDialogHelper filterdialoghelper, Section section)
    {
        filterdialoghelper.mSelectedSection = section;
        return section;
    }

*/



/*
    static Category access$602(FilterDialogHelper filterdialoghelper, Category category)
    {
        filterdialoghelper.mSelectedCategory = category;
        return category;
    }

*/



/*
    static com.showmax.lib.api.model.catalogue.Asset.Type access$802(FilterDialogHelper filterdialoghelper, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        filterdialoghelper.mSelectedAssetType = type;
        return type;
    }

*/

}
