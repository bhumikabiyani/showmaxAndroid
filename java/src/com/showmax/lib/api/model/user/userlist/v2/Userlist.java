// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist.v2;

import android.os.Parcel;
import android.os.Parcelable;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.lib.api.model.user.userlist.v2:
//            UserlistItem

public class Userlist
    implements Parcelable
{
    public static final class UserlistType extends Enum
    {

        private static final UserlistType $VALUES[];
        public static final UserlistType BOOKMARKS;
        public static final UserlistType RECENTLY_WATCHED;
        private static UserlistType allValues[] = values();

        public static UserlistType fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static UserlistType valueOf(String s)
        {
            return (UserlistType)Enum.valueOf(com/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType, s);
        }

        public static UserlistType[] values()
        {
            return (UserlistType[])$VALUES.clone();
        }

        public String toString()
        {
            static class _cls2
            {

                static final int $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType[];

                static 
                {
                    $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType = new int[UserlistType.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType[UserlistType.BOOKMARKS.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$user$userlist$v2$Userlist$UserlistType[UserlistType.RECENTLY_WATCHED.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls2..SwitchMap.com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "bookmarks";

            case 2: // '\002'
                return "recently_watched";
            }
        }

        static 
        {
            BOOKMARKS = new UserlistType("BOOKMARKS", 0);
            RECENTLY_WATCHED = new UserlistType("RECENTLY_WATCHED", 1);
            $VALUES = (new UserlistType[] {
                BOOKMARKS, RECENTLY_WATCHED
            });
        }

        private UserlistType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Userlist createFromParcel(Parcel parcel)
        {
            return new Userlist(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Userlist[] newArray(int i)
        {
            return new Userlist[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final String TYPE_BOOKMARKS_NAME = "bookmarks";
    private static final String TYPE_RECENTLY_WATCED_NAME = "recently_watched";
    private static final String USERLIST_DELIMITER = ";";
    private static final String USERLIST_ITEM_DELIMITER = "&";
    public String description;
    public ArrayList items;
    public String title;

    public Userlist()
    {
    }

    private Userlist(Parcel parcel)
    {
        title = parcel.readString();
        description = parcel.readString();
        items = new ArrayList();
        parcel.readTypedList(items, UserlistItem.CREATOR);
    }


    public static Userlist deserialize(String s)
    {
        s = s.split(";", -1);
        Userlist userlist = new Userlist();
        userlist.title = s[0];
        userlist.items = deserializeItems(s[1]);
        return userlist;
    }

    private static ArrayList deserializeItems(String s)
    {
        ArrayList arraylist = new ArrayList();
        if (s != null && !s.isEmpty())
        {
            s = s.split("&", -1);
            int j = s.length;
            for (int i = 0; i < j; i++)
            {
                arraylist.add(UserlistItem.deserialize(s[i]));
            }

        }
        return arraylist;
    }

    private String serializeItems()
    {
        if (items != null && !items.isEmpty())
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (int i = 0; i < items.size() - 1; i++)
            {
                stringbuilder.append(((UserlistItem)items.get(i)).serialize());
                stringbuilder.append("&");
            }

            stringbuilder.append(((UserlistItem)items.get(items.size() - 1)).serialize());
            return stringbuilder.toString();
        } else
        {
            return "";
        }
    }

    public boolean contains(Asset asset)
    {
label0:
        {
            if (items == null || items.isEmpty() || asset == null || asset.id == null)
            {
                break label0;
            }
            Iterator iterator = items.iterator();
            UserlistItem userlistitem;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                userlistitem = (UserlistItem)iterator.next();
            } while (userlistitem.assetData == null || !asset.id.equals(userlistitem.assetData.id));
            return true;
        }
        return false;
    }

    public boolean contains(Asset asset, String s)
    {
label0:
        {
            if (items == null || items.isEmpty() || asset == null || asset.id == null || s == null)
            {
                break label0;
            }
            Iterator iterator = items.iterator();
            UserlistItem userlistitem;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                userlistitem = (UserlistItem)iterator.next();
            } while (userlistitem.assetData == null || !asset.id.equals(userlistitem.assetData.id) || !s.equals(userlistitem.encodingTaskId));
            return true;
        }
        return false;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof Userlist)
        {
            Userlist userlist = (Userlist)obj;
            if (title.equals(userlist.title) && serialize().equals(((Userlist)obj).serialize()))
            {
                return true;
            }
        }
        return false;
    }

    public String[] getArrayOfItemIds()
    {
        String as[];
        if (items != null && !items.isEmpty())
        {
            String as1[] = new String[items.size()];
            int i = 0;
            do
            {
                as = as1;
                if (i >= items.size())
                {
                    break;
                }
                as1[i] = ((UserlistItem)items.get(i)).assetData.id;
                i++;
            } while (true);
        } else
        {
            as = null;
        }
        return as;
    }

    public int getAssetProgress(Asset asset, String s)
    {
label0:
        {
            if (asset == null || items == null || items.isEmpty())
            {
                break label0;
            }
            Iterator iterator = items.iterator();
            UserlistItem userlistitem;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                userlistitem = (UserlistItem)iterator.next();
            } while (userlistitem.assetData == null || !userlistitem.assetData.id.equals(asset.id) || !contains(asset, s));
            return userlistitem.progress;
        }
        return 0;
    }

    public UserlistType getUserlistType()
    {
        if (UserlistType.BOOKMARKS.toString().equals(title))
        {
            return UserlistType.BOOKMARKS;
        }
        if (UserlistType.RECENTLY_WATCHED.toString().equals(title))
        {
            return UserlistType.RECENTLY_WATCHED;
        } else
        {
            return null;
        }
    }

    public String serialize()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(title).append(";").append(serializeItems());
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(title);
        parcel.writeString(description);
        parcel.writeTypedList(items);
    }

}
