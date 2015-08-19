// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewCompat;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.widget.AppCompatTextView;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

// Referenced classes of package android.support.design.widget:
//            TabLayout

class update extends LinearLayout
    implements android.view.stener
{

    private View mCustomView;
    private ImageView mIconView;
    private final setLongClickable mTab;
    private TextView mTextView;
    final TabLayout this$0;

    public update getTab()
    {
        return mTab;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(android/support/v7/app/ActionBar$Tab.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(android/support/v7/app/ActionBar$Tab.getName());
    }

    public boolean onLongClick(View view)
    {
        view = new int[2];
        getLocationOnScreen(view);
        Object obj = getContext();
        int i = getWidth();
        int j = getHeight();
        int k = ((Context) (obj)).getResources().getDisplayMetrics().widthPixels;
        obj = Toast.makeText(((Context) (obj)), mTab.ontentDescription(), 0);
        ((Toast) (obj)).setGravity(49, (view[0] + i / 2) - k / 2, j);
        ((Toast) (obj)).show();
        return true;
    }

    public void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (TabLayout.access$700(TabLayout.this) != 0 && getMeasuredWidth() > TabLayout.access$700(TabLayout.this))
        {
            super.onMeasure(android.view.akeMeasureSpec(TabLayout.access$700(TabLayout.this), 0x40000000), j);
        } else
        if (TabLayout.access$800(TabLayout.this) > 0 && getMeasuredHeight() < TabLayout.access$800(TabLayout.this))
        {
            super.onMeasure(android.view.akeMeasureSpec(TabLayout.access$800(TabLayout.this), 0x40000000), j);
            return;
        }
    }

    public void setSelected(boolean flag)
    {
        boolean flag1;
        if (isSelected() != flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        super.setSelected(flag);
        if (flag1 && flag)
        {
            sendAccessibilityEvent(4);
            if (mTextView != null)
            {
                mTextView.setSelected(flag);
            }
            if (mIconView != null)
            {
                mIconView.setSelected(flag);
            }
        }
    }

    final void update()
    {
        Object obj = mTab;
        Object obj1 = ((mTab) (obj)).ustomView();
        if (obj1 != null)
        {
            obj = ((View) (obj1)).getParent();
            if (obj != this)
            {
                if (obj != null)
                {
                    ((ViewGroup)obj).removeView(((View) (obj1)));
                }
                addView(((View) (obj1)));
            }
            mCustomView = ((View) (obj1));
            if (mTextView != null)
            {
                mTextView.setVisibility(8);
            }
            if (mIconView != null)
            {
                mIconView.setVisibility(8);
                mIconView.setImageDrawable(null);
            }
            return;
        }
        if (mCustomView != null)
        {
            removeView(mCustomView);
            mCustomView = null;
        }
        android.graphics.drawable.Drawable drawable = ((mCustomView) (obj)).con();
        obj1 = ((con) (obj)).ext();
        boolean flag;
        if (drawable != null)
        {
            if (mIconView == null)
            {
                ImageView imageview = new ImageView(getContext());
                android.widget.tParams tparams = new android.widget.tParams(-2, -2);
                tparams.gravity = 16;
                imageview.setLayoutParams(tparams);
                addView(imageview, 0);
                mIconView = imageview;
            }
            mIconView.setImageDrawable(drawable);
            mIconView.setVisibility(0);
        } else
        if (mIconView != null)
        {
            mIconView.setVisibility(8);
            mIconView.setImageDrawable(null);
        }
        if (!TextUtils.isEmpty(((CharSequence) (obj1))))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            if (mTextView == null)
            {
                AppCompatTextView appcompattextview = new AppCompatTextView(getContext());
                appcompattextview.setTextAppearance(getContext(), TabLayout.access$900(TabLayout.this));
                appcompattextview.setMaxLines(2);
                appcompattextview.setEllipsize(android.text.At.END);
                appcompattextview.setGravity(17);
                if (TabLayout.access$1000(TabLayout.this) != null)
                {
                    appcompattextview.setTextColor(TabLayout.access$1000(TabLayout.this));
                }
                addView(appcompattextview, -2, -2);
                mTextView = appcompattextview;
            }
            mTextView.setText(((CharSequence) (obj1)));
            mTextView.setContentDescription(((mTextView) (obj)).ontentDescription());
            mTextView.setVisibility(0);
        } else
        if (mTextView != null)
        {
            mTextView.setVisibility(8);
            mTextView.setText(null);
        }
        if (mIconView != null)
        {
            mIconView.setContentDescription(((mIconView) (obj)).ontentDescription());
        }
        if (!flag && !TextUtils.isEmpty(((ontentDescription) (obj)).ontentDescription()))
        {
            setOnLongClickListener(this);
            return;
        } else
        {
            setOnLongClickListener(null);
            setLongClickable(false);
            return;
        }
    }

    public (Context context,  )
    {
        this$0 = TabLayout.this;
        super(context);
        mTab = ;
        if (TabLayout.access$200(TabLayout.this) != 0)
        {
            setBackgroundDrawable(TintManager.getDrawable(context, TabLayout.access$200(TabLayout.this)));
        }
        ViewCompat.setPaddingRelative(this, TabLayout.access$300(TabLayout.this), TabLayout.access$400(TabLayout.this), TabLayout.access$500(TabLayout.this), TabLayout.access$600(TabLayout.this));
        setGravity(17);
        update();
    }
}
