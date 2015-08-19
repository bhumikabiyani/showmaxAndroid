// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model;

import android.os.Parcel;
import android.os.Parcelable;

public class AppPreflightResponseBody
    implements Parcelable
{
    public class AppPreflightAction
    {

        public String btnLink;
        public String btnText;
        public String message;
        public String redirect;
        final AppPreflightResponseBody this$0;

        public AppPreflightAction()
        {
            this$0 = AppPreflightResponseBody.this;
            super();
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public AppPreflightResponseBody createFromParcel(Parcel parcel)
        {
            return new AppPreflightResponseBody(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public AppPreflightResponseBody[] newArray(int i)
        {
            return new AppPreflightResponseBody[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public AppPreflightAction action;
    public String logLevel;

    public AppPreflightResponseBody()
    {
    }

    private AppPreflightResponseBody(Parcel parcel)
    {
        logLevel = parcel.readString();
        action.message = parcel.readString();
        action.btnText = parcel.readString();
        action.btnLink = parcel.readString();
        action.redirect = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public String getBtnLink()
    {
        if (action == null)
        {
            return null;
        } else
        {
            return action.btnLink;
        }
    }

    public String getBtntext()
    {
        if (action == null)
        {
            return null;
        } else
        {
            return action.btnText;
        }
    }

    public String getLogLevel()
    {
        return logLevel;
    }

    public String getMessage()
    {
        if (action == null)
        {
            return null;
        } else
        {
            return action.message;
        }
    }

    public String getRedirect()
    {
        if (action == null)
        {
            return null;
        } else
        {
            return action.redirect;
        }
    }

    public String toString()
    {
        return String.format("[AppPreflightResponseBody]::[logLevel: %s]::[btnText: %s]::[btnLink: %s]::[action: %s]", new Object[] {
            getLogLevel(), getBtntext(), getBtnLink(), getRedirect()
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(logLevel);
        parcel.writeString(action.message);
        parcel.writeString(action.btnText);
        parcel.writeString(action.btnLink);
        parcel.writeString(action.redirect);
    }

}
