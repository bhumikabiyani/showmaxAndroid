// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist;

import android.os.Parcel;
import android.os.Parcelable;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.lib.api.model.user.userlist:
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
            return (UserlistType)Enum.valueOf(com/showmax/lib/api/model/user/userlist/Userlist$UserlistType, s);
        }

        public static UserlistType[] values()
        {
            return (UserlistType[])$VALUES.clone();
        }

        public String toString()
        {
            static class _cls2
            {

                static final int $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType[];

                static 
                {
                    $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType = new int[UserlistType.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType[UserlistType.BOOKMARKS.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType[UserlistType.RECENTLY_WATCHED.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls2..SwitchMap.com.showmax.lib.api.model.user.userlist.Userlist.UserlistType[ordinal()])
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
    public String id;
    public ArrayList items;
    public String link;
    public String title;

    private Userlist()
    {
    }

    private Userlist(Parcel parcel)
    {
        id = parcel.readString();
        title = parcel.readString();
        description = parcel.readString();
        link = parcel.readString();
        items = new ArrayList();
        parcel.readStringList(items);
    }


    public static Userlist deserialize(String s)
    {
        int i = 0;
        String as[] = s.split(";");
        s = new Userlist();
        s.id = as[0];
        s.title = as[1];
        s.items = new ArrayList();
        if (as.length > 2)
        {
            as = as[2].split("&");
            for (int j = as.length; i < j; i++)
            {
                String s1 = as[i];
                ((Userlist) (s)).items.add(s1);
            }

        }
        return s;
    }

    private int indexOf(String s)
    {
        if (items != null && !items.isEmpty())
        {
            ArrayList arraylist = getUserlistItems();
            for (int i = 0; i < arraylist.size(); i++)
            {
                if (((UserlistItem)arraylist.get(i)).assetId.equals(s))
                {
                    return i;
                }
            }

        }
        return -1;
    }

    private String serializeItems()
    {
        if (items != null && !items.isEmpty())
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (int i = 0; i < items.size() - 1; i++)
            {
                stringbuilder.append((String)items.get(i));
                stringbuilder.append("&");
            }

            stringbuilder.append((String)items.get(items.size() - 1));
            return stringbuilder.toString();
        } else
        {
            return "";
        }
    }

    private String updateEndTime(String s, int i)
    {
        String s1 = s;
        if (s != null)
        {
            s1 = s;
            if (!s.isEmpty())
            {
                s = UserlistItem.deserialize(s);
                s.retainedResumeTime = i;
                s1 = s.serialize();
            }
        }
        return s1;
    }

    public void addAssetToList(Asset asset)
    {
        if (items == null)
        {
            items = new ArrayList();
        }
        if (!contains(asset.id))
        {
            items.add(0, asset.id);
            return;
        } else
        {
            int i = indexOf(asset.id);
            asset = (String)items.get(i);
            items.remove(i);
            items.add(0, asset);
            return;
        }
    }

    public void addAssetToList(Asset asset, int i)
    {
        if (items == null)
        {
            items = new ArrayList();
        }
        if (!contains(asset.id))
        {
            items.add(0, updateEndTime(asset.id, i));
            return;
        } else
        {
            int j = indexOf(asset.id);
            asset = (String)items.get(j);
            items.remove(j);
            items.add(0, updateEndTime(asset, i));
            return;
        }
    }

    public boolean contains(String s)
    {
label0:
        {
            Object obj = getUserlistItems();
            if (obj == null || ((ArrayList) (obj)).isEmpty() || s == null)
            {
                break label0;
            }
            obj = ((ArrayList) (obj)).iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break label0;
                }
            } while (!s.equals(((UserlistItem)((Iterator) (obj)).next()).assetId));
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
            if (id.equals(userlist.id) && serialize().equals(((Userlist)obj).serialize()))
            {
                return true;
            }
        }
        return false;
    }

    public int getAssetEndTime(Asset asset)
    {
label0:
        {
            if (asset == null)
            {
                break label0;
            }
            Iterator iterator = getUserlistItems().iterator();
            UserlistItem userlistitem;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                userlistitem = (UserlistItem)iterator.next();
            } while (!userlistitem.assetId.equals(asset.id));
            return userlistitem.retainedResumeTime;
        }
        return 0;
    }

    public ArrayList getUserlistItems()
    {
        ArrayList arraylist;
        if (items != null && !items.isEmpty())
        {
            ArrayList arraylist1 = new ArrayList();
            Iterator iterator = items.iterator();
            do
            {
                arraylist = arraylist1;
                if (!iterator.hasNext())
                {
                    break;
                }
                arraylist1.add(UserlistItem.deserialize((String)iterator.next()));
            } while (true);
        } else
        {
            arraylist = new ArrayList();
        }
        return arraylist;
    }

    public String[] getUserlistItemsArray()
    {
        if (items != null && !items.isEmpty())
        {
            return (String[])items.toArray(new String[items.size()]);
        } else
        {
            return null;
        }
    }

    public String[] getUserlistItemsArrayWithoutEndTimes()
    {
        ArrayList arraylist = getUserlistItems();
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
                as1[i] = ((UserlistItem)arraylist.get(i)).assetId;
                i++;
            } while (true);
        } else
        {
            as = null;
        }
        return as;
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

    public void removeAssetFromList(Asset asset)
    {
        if (asset != null && contains(asset.id) && items != null)
        {
            items.remove(asset.id);
        }
    }

    public String serialize()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(id).append(";").append(title).append(";").append(serializeItems());
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(id);
        parcel.writeString(title);
        parcel.writeString(description);
        parcel.writeString(link);
        parcel.writeStringList(items);
    }

}
