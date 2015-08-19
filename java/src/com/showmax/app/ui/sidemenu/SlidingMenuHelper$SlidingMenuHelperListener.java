// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.sidemenu;

import com.showmax.lib.api.model.catalogue.Section;

// Referenced classes of package com.showmax.app.ui.sidemenu:
//            SlidingMenuHelper

public static interface 
{

    public abstract void onContactUsClick();

    public abstract void onHelpClick();

    public abstract void onMenuClosed();

    public abstract void onMenuOpened();

    public abstract void onMoviesClick();

    public abstract void onMyAccountClick();

    public abstract void onMyFlixClick();

    public abstract void onSectionItemClick(Section section);

    public abstract void onSignInClick();

    public abstract void onSignOutClick();

    public abstract void onTvSeriesClick();
}
