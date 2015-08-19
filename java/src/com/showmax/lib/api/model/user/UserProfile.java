// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.user:
//            Address

public class UserProfile
    implements Parcelable
{
    public static final class SubscriptionStatus extends Enum
    {

        private static final SubscriptionStatus $VALUES[];
        public static final SubscriptionStatus FREE;
        public static final SubscriptionStatus FULL;
        private static SubscriptionStatus allValues[] = values();

        public static SubscriptionStatus fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static SubscriptionStatus valueOf(String s)
        {
            return (SubscriptionStatus)Enum.valueOf(com/showmax/lib/api/model/user/UserProfile$SubscriptionStatus, s);
        }

        public static SubscriptionStatus[] values()
        {
            return (SubscriptionStatus[])$VALUES.clone();
        }

        public String toString()
        {
            static class _cls2
            {

                static final int $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus[];

                static 
                {
                    $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus = new int[SubscriptionStatus.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus[SubscriptionStatus.FREE.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus[SubscriptionStatus.FULL.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls2..SwitchMap.com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "free";

            case 2: // '\002'
                return "full";
            }
        }

        static 
        {
            FREE = new SubscriptionStatus("FREE", 0);
            FULL = new SubscriptionStatus("FULL", 1);
            $VALUES = (new SubscriptionStatus[] {
                FREE, FULL
            });
        }

        private SubscriptionStatus(String s, int i)
        {
            super(s, i);
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public UserProfile createFromParcel(Parcel parcel)
        {
            return new UserProfile(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UserProfile[] newArray(int i)
        {
            return new UserProfile[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public Address address;
    public String billingCountry;
    public String birthday;
    public String communicationLanguage;
    public String email;
    public String firstName;
    public String lastName;
    public String lastUpdated;
    public String partner;
    public String phone;
    public String registrationSource;
    public SubscriptionStatus subscriptionStatus;
    public String userId;

    private UserProfile(Parcel parcel)
    {
        userId = parcel.readString();
        firstName = parcel.readString();
        lastName = parcel.readString();
        email = parcel.readString();
        birthday = parcel.readString();
        phone = parcel.readString();
        billingCountry = parcel.readString();
        int i = parcel.readInt();
        SubscriptionStatus subscriptionstatus;
        if (i == -1)
        {
            subscriptionstatus = null;
        } else
        {
            subscriptionstatus = SubscriptionStatus.fromOrdinal(i);
        }
        subscriptionStatus = subscriptionstatus;
        partner = parcel.readString();
        communicationLanguage = parcel.readString();
        registrationSource = parcel.readString();
        lastUpdated = parcel.readString();
        address = (Address)parcel.readParcelable(com/showmax/lib/api/model/user/Address.getClassLoader());
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(userId);
        parcel.writeString(firstName);
        parcel.writeString(lastName);
        parcel.writeString(email);
        parcel.writeString(birthday);
        parcel.writeString(phone);
        parcel.writeString(billingCountry);
        int j;
        if (subscriptionStatus != null)
        {
            j = subscriptionStatus.ordinal();
        } else
        {
            j = -1;
        }
        parcel.writeInt(j);
        parcel.writeString(partner);
        parcel.writeString(communicationLanguage);
        parcel.writeString(registrationSource);
        parcel.writeString(lastUpdated);
        parcel.writeParcelable(address, i);
    }

}
