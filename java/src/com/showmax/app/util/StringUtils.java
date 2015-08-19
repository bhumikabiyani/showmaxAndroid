// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.content.Context;
import android.content.res.Resources;
import com.showmax.app.ShowMaxApp;
import com.showmax.lib.api.model.billing.Price;
import com.showmax.lib.api.model.billing.Pricelist;
import com.showmax.lib.api.model.billing.PricelistList;
import com.showmax.lib.api.model.billing.Prices;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Cast;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Crew;
import com.showmax.lib.api.model.catalogue.Language;
import com.showmax.lib.api.utils.LanguageUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class StringUtils
{

    public StringUtils()
    {
    }

    public static String capitalizeFirstLetter(String s)
    {
        if (s == null || s.isEmpty())
        {
            return s;
        } else
        {
            return (new StringBuilder()).append(s.substring(0, 1).toUpperCase()).append(s.substring(1)).toString();
        }
    }

    public static String getAllString(Context context)
    {
        if (context != null)
        {
            return context.getString(0x7f0d0021);
        } else
        {
            return "All";
        }
    }

    public static String getAssetTypeString(Context context, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        if (context != null)
        {
            if (type == com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE)
            {
                return context.getString(0x7f0d00bb);
            }
            if (type == com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES)
            {
                return context.getString(0x7f0d00d6);
            }
        }
        return "";
    }

    public static String getCategories(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.isEmpty())
        {
            return "-";
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < arraylist.size() - 1; i++)
        {
            stringbuilder.append(((Category)arraylist.get(i)).title);
            stringbuilder.append(" | ");
        }

        stringbuilder.append(((Category)arraylist.get(arraylist.size() - 1)).title);
        return stringbuilder.toString();
    }

    public static String getDirector(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.isEmpty())
        {
            return "-";
        }
        ArrayList arraylist1 = new ArrayList();
        arraylist = arraylist.iterator();
        do
        {
            if (!arraylist.hasNext())
            {
                break;
            }
            Crew crew = (Crew)arraylist.next();
            if (crew.role == com.showmax.lib.api.model.catalogue.Crew.Role.DIRECTOR)
            {
                arraylist1.add(crew);
            }
        } while (true);
        if (!arraylist1.isEmpty())
        {
            arraylist = new StringBuilder();
            for (int i = 0; i < arraylist1.size() - 1; i++)
            {
                arraylist.append(((Crew)arraylist1.get(i)).name);
                arraylist.append(", ");
            }

            arraylist.append(((Crew)arraylist1.get(arraylist1.size() - 1)).name);
            return arraylist.toString();
        } else
        {
            return "-";
        }
    }

    public static ArrayList getDirectorStrings(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        if (arraylist != null && !arraylist.isEmpty())
        {
            arraylist = arraylist.iterator();
            do
            {
                if (!arraylist.hasNext())
                {
                    break;
                }
                Crew crew = (Crew)arraylist.next();
                if (crew.role == com.showmax.lib.api.model.catalogue.Crew.Role.DIRECTOR && crew.name != null && !crew.name.isEmpty())
                {
                    arraylist1.add(crew.name);
                }
            } while (true);
        }
        return arraylist1;
    }

    public static String getDuration(int i)
    {
        if (i == 0)
        {
            return "-";
        }
        int j = (i / 60) % 60;
        i = i / 60 / 60;
        String s = ShowMaxApp.getInstance().getResources().getString(0x7f0d00ba);
        if (i == 0)
        {
            return String.format("%02d%s", new Object[] {
                Integer.valueOf(j), s
            });
        } else
        {
            return String.format("%d%s %02d%s", new Object[] {
                Integer.valueOf(i), ShowMaxApp.getInstance().getResources().getString(0x7f0d009c), Integer.valueOf(j), s
            });
        }
    }

    public static String getEpisodeString(Context context, Asset asset)
    {
        if (context != null && asset != null)
        {
            return String.format(context.getString(0x7f0d0098), new Object[] {
                Integer.valueOf(asset.number)
            });
        } else
        {
            return "";
        }
    }

    public static String getFormattedDefaultSubscriptionPrice(PricelistList pricelistlist)
    {
        if (pricelistlist != null)
        {
            pricelistlist = pricelistlist.defaultPaymentMethod;
            if (pricelistlist != null)
            {
                pricelistlist = ((Pricelist) (pricelistlist)).subscriptions;
                if (pricelistlist != null)
                {
                    pricelistlist = new ArrayList(pricelistlist.values());
                    if (pricelistlist != null && !pricelistlist.isEmpty())
                    {
                        pricelistlist = (Pricelist)pricelistlist.get(0);
                        if (pricelistlist != null)
                        {
                            pricelistlist = ((Pricelist) (pricelistlist)).presentingPrice;
                            if (pricelistlist != null)
                            {
                                pricelistlist = ((Prices) (pricelistlist)).priceTotal;
                                if (pricelistlist != null && ((Price) (pricelistlist)).formatted != null && !((Price) (pricelistlist)).formatted.isEmpty())
                                {
                                    return ((Price) (pricelistlist)).formatted;
                                }
                            }
                        }
                    }
                }
            }
        }
        return "-";
    }

    public static String getLanguages(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.isEmpty())
        {
            return "-";
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < arraylist.size() - 1; i++)
        {
            stringbuilder.append(((Language)arraylist.get(i)).name);
            stringbuilder.append(", ");
        }

        stringbuilder.append(((Language)arraylist.get(arraylist.size() - 1)).name);
        return stringbuilder.toString();
    }

    public static String getLanguagesFromIso(ArrayList arraylist)
    {
        if (arraylist != null)
        {
            ArrayList arraylist1 = new ArrayList();
            String s;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); arraylist1.add(LanguageUtils.getInstance().parseLanguage(s)))
            {
                s = (String)arraylist.next();
            }

            return getLanguages(arraylist1);
        } else
        {
            return "-";
        }
    }

    public static String getStarring(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.isEmpty())
        {
            return "-";
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < arraylist.size() - 1; i++)
        {
            stringbuilder.append(((Cast)arraylist.get(i)).name);
            stringbuilder.append(", ");
        }

        stringbuilder.append(((Cast)arraylist.get(arraylist.size() - 1)).name);
        return stringbuilder.toString();
    }

    public static ArrayList getStarringStrings(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        if (arraylist != null && !arraylist.isEmpty())
        {
            arraylist = arraylist.iterator();
            do
            {
                if (!arraylist.hasNext())
                {
                    break;
                }
                Cast cast = (Cast)arraylist.next();
                if (cast.name != null && !cast.name.isEmpty())
                {
                    arraylist1.add(cast.name);
                }
            } while (true);
        }
        return arraylist1;
    }

    public static String getYear(int i)
    {
        if (i > 0)
        {
            return String.valueOf(i);
        } else
        {
            return "";
        }
    }
}
