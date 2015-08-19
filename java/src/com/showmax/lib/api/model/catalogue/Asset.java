// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;
import com.showmax.lib.api.utils.LanguageUtils;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Cast, Category, ContentWarning, Crew, 
//            Image, Ratings, Video, Language

public class Asset
    implements Parcelable
{
    public static final class MetadataDirection extends Enum
    {

        private static final MetadataDirection $VALUES[];
        public static final MetadataDirection LTR;
        public static final MetadataDirection RTL;
        private static MetadataDirection allValues[] = values();

        public static MetadataDirection fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static MetadataDirection valueOf(String s)
        {
            return (MetadataDirection)Enum.valueOf(com/showmax/lib/api/model/catalogue/Asset$MetadataDirection, s);
        }

        public static MetadataDirection[] values()
        {
            return (MetadataDirection[])$VALUES.clone();
        }

        static 
        {
            LTR = new MetadataDirection("LTR", 0);
            RTL = new MetadataDirection("RTL", 1);
            $VALUES = (new MetadataDirection[] {
                LTR, RTL
            });
        }

        private MetadataDirection(String s, int i)
        {
            super(s, i);
        }
    }

    public static class TitleComparator
        implements Comparator
    {

        private boolean mDescending;

        private int resolveDirection(int i)
        {
            int j = i;
            if (mDescending)
            {
                j = -i;
            }
            return j;
        }

        public int compare(Asset asset, Asset asset1)
        {
            if (asset == null && asset1 != null)
            {
                return resolveDirection(-1);
            }
            if (asset != null && asset1 == null)
            {
                return resolveDirection(1);
            }
            if (asset == null && asset1 == null)
            {
                return 0;
            }
            if (asset.title == null && asset1.title != null)
            {
                return resolveDirection(-1);
            }
            if (asset.title != null && asset1.title == null)
            {
                return resolveDirection(1);
            } else
            {
                return resolveDirection(asset.title.compareTo(asset1.title));
            }
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((Asset)obj, (Asset)obj1);
        }

        public TitleComparator(boolean flag)
        {
            mDescending = flag;
        }
    }

    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type EPISODE;
        public static final Type MOVIE;
        public static final Type SEASON;
        public static final Type TV_SERIES;
        private static Type allValues[] = values();

        public static Type fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static Type parse(String s)
        {
            if (s != null && !s.isEmpty())
            {
                if (s.equals(MOVIE.toString()))
                {
                    return MOVIE;
                }
                if (s.equals(TV_SERIES.toString()))
                {
                    return TV_SERIES;
                }
                if (s.equals(SEASON.toString()))
                {
                    return SEASON;
                }
                if (s.equals(EPISODE.toString()))
                {
                    return EPISODE;
                }
            }
            return null;
        }

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/showmax/lib/api/model/catalogue/Asset$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        public String toString()
        {
            static class _cls2
            {

                static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[];
                static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[];

                static 
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel = new int[VodModel.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[VodModel.AVOD.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[VodModel.PVOD.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[VodModel.SVOD.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[VodModel.TVOD.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type = new int[Type.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[Type.MOVIE.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[Type.TV_SERIES.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[Type.SEASON.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[Type.EPISODE.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls2..SwitchMap.com.showmax.lib.api.model.catalogue.Asset.Type[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "movie";

            case 2: // '\002'
                return "tv_series";

            case 3: // '\003'
                return "season";

            case 4: // '\004'
                return "episode";
            }
        }

        static 
        {
            MOVIE = new Type("MOVIE", 0);
            TV_SERIES = new Type("TV_SERIES", 1);
            SEASON = new Type("SEASON", 2);
            EPISODE = new Type("EPISODE", 3);
            $VALUES = (new Type[] {
                MOVIE, TV_SERIES, SEASON, EPISODE
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class VodModel extends Enum
    {

        private static final VodModel $VALUES[];
        public static final VodModel AVOD;
        public static final VodModel PVOD;
        public static final VodModel SVOD;
        public static final VodModel TVOD;
        private static VodModel allValues[] = values();

        public static VodModel fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static VodModel valueOf(String s)
        {
            return (VodModel)Enum.valueOf(com/showmax/lib/api/model/catalogue/Asset$VodModel, s);
        }

        public static VodModel[] values()
        {
            return (VodModel[])$VALUES.clone();
        }

        public String toString()
        {
            switch (_cls2..SwitchMap.com.showmax.lib.api.model.catalogue.Asset.VodModel[ordinal()])
            {
            default:
                return "null";

            case 1: // '\001'
                return "avod";

            case 2: // '\002'
                return "pvod";

            case 3: // '\003'
                return "svod";

            case 4: // '\004'
                return "tvod";
            }
        }

        static 
        {
            AVOD = new VodModel("AVOD", 0);
            SVOD = new VodModel("SVOD", 1);
            TVOD = new VodModel("TVOD", 2);
            PVOD = new VodModel("PVOD", 3);
            $VALUES = (new VodModel[] {
                AVOD, SVOD, TVOD, PVOD
            });
        }

        private VodModel(String s, int i)
        {
            super(s, i);
        }
    }

    public static class YearComparator
        implements Comparator
    {

        private boolean mDescending;

        private int resolveDirection(int i)
        {
            int j = i;
            if (mDescending)
            {
                j = -i;
            }
            return j;
        }

        public int compare(Asset asset, Asset asset1)
        {
            boolean flag = false;
            if (asset != null || asset1 == null) goto _L2; else goto _L1
_L1:
            int i = resolveDirection(-1);
_L4:
            return i;
_L2:
            if (asset != null && asset1 == null)
            {
                return resolveDirection(1);
            }
            if (asset != null)
            {
                break; /* Loop/switch isn't completed */
            }
            i = ((flag) ? 1 : 0);
            if (asset1 == null) goto _L4; else goto _L3
_L3:
            if (asset.year < asset1.year)
            {
                return resolveDirection(-1);
            }
            i = ((flag) ? 1 : 0);
            if (asset.year > asset1.year)
            {
                return resolveDirection(1);
            }
            if (true) goto _L4; else goto _L5
_L5:
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((Asset)obj, (Asset)obj1);
        }

        public YearComparator(boolean flag)
        {
            mDescending = flag;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Asset createFromParcel(Parcel parcel)
        {
            return new Asset(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Asset[] newArray(int i)
        {
            return new Asset[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final byte PARCELABLE_FALSE = 0;
    private static final byte PARCELABLE_TRUE = 1;
    public ArrayList audioLanguages;
    public ArrayList cast;
    public ArrayList categories;
    public ContentWarning contentWarning;
    public ArrayList crew;
    public String description;
    public ArrayList episodes;
    public String id;
    public ArrayList images;
    public String link;
    public MetadataDirection metadataDirection;
    public String metadataLanguage;
    public int number;
    public String originalTitle;
    public Ratings ratings;
    public Asset season;
    public ArrayList seasons;
    public String sectionSlug;
    public ArrayList subtitlesLanguages;
    public String title;
    public boolean trial;
    public Asset tvSerie;
    public Type type;
    public ArrayList videos;
    public VodModel vodModel;
    public int year;

    public Asset()
    {
    }

    private Asset(Parcel parcel)
    {
        Object obj1 = null;
        super();
        audioLanguages = new ArrayList();
        parcel.readStringList(audioLanguages);
        cast = new ArrayList();
        parcel.readTypedList(cast, Cast.CREATOR);
        categories = new ArrayList();
        parcel.readTypedList(categories, Category.CREATOR);
        contentWarning = (ContentWarning)parcel.readParcelable(com/showmax/lib/api/model/catalogue/ContentWarning.getClassLoader());
        crew = new ArrayList();
        parcel.readTypedList(crew, Crew.CREATOR);
        description = parcel.readString();
        episodes = new ArrayList();
        parcel.readTypedList(episodes, CREATOR);
        id = parcel.readString();
        images = new ArrayList();
        parcel.readTypedList(images, Image.CREATOR);
        link = parcel.readString();
        int i = parcel.readInt();
        Object obj;
        boolean flag;
        if (i == -1)
        {
            obj = null;
        } else
        {
            obj = MetadataDirection.fromOrdinal(i);
        }
        metadataDirection = ((MetadataDirection) (obj));
        metadataLanguage = parcel.readString();
        number = parcel.readInt();
        originalTitle = parcel.readString();
        ratings = (Ratings)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Ratings.getClassLoader());
        season = (Asset)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Asset.getClassLoader());
        seasons = new ArrayList();
        parcel.readTypedList(seasons, CREATOR);
        sectionSlug = parcel.readString();
        subtitlesLanguages = new ArrayList();
        parcel.readStringList(subtitlesLanguages);
        title = parcel.readString();
        if (parcel.readByte() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        trial = flag;
        tvSerie = (Asset)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Asset.getClassLoader());
        i = parcel.readInt();
        if (i == -1)
        {
            obj = null;
        } else
        {
            obj = Type.fromOrdinal(i);
        }
        type = ((Type) (obj));
        videos = new ArrayList();
        parcel.readTypedList(videos, Video.CREATOR);
        i = parcel.readInt();
        if (i == -1)
        {
            obj = obj1;
        } else
        {
            obj = VodModel.fromOrdinal(i);
        }
        vodModel = ((VodModel) (obj));
        year = parcel.readInt();
    }


    private ArrayList getVideoAudioLanguages(boolean flag)
    {
        Video.Type type1;
        ArrayList arraylist;
        if (flag)
        {
            type1 = Video.Type.TRAILER;
        } else
        {
            type1 = Video.Type.MAIN;
        }
        arraylist = new ArrayList();
        if (videos != null)
        {
            Iterator iterator = videos.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Video video = (Video)iterator.next();
                if (video.type == type1)
                {
                    arraylist.add(LanguageUtils.getInstance().parseLanguage(video.language));
                }
            } while (true);
        }
        return arraylist;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof Asset))
        {
            obj = (Asset)obj;
            if (((Asset) (obj)).id != null && ((Asset) (obj)).id.equals(id))
            {
                return true;
            }
        }
        return false;
    }

    public Image getHeroImage()
    {
label0:
        {
            if (images == null || images.isEmpty())
            {
                break label0;
            }
            Iterator iterator = images.iterator();
            Image image;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                image = (Image)iterator.next();
            } while (image.type != Image.Type.HERO);
            return image;
        }
        return null;
    }

    public Image getLandscapeImage()
    {
label0:
        {
            if (images == null || images.isEmpty())
            {
                break label0;
            }
            Iterator iterator = images.iterator();
            Image image;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                image = (Image)iterator.next();
            } while (image.orientation != Image.Orientation.LANDSCAPE);
            return image;
        }
        return null;
    }

    public Video getMainVideo(Language language)
    {
label0:
        {
            if (videos == null || videos.isEmpty())
            {
                break label0;
            }
            for (Iterator iterator = videos.iterator(); iterator.hasNext();)
            {
                Video video2 = (Video)iterator.next();
                if (video2.type == Video.Type.MAIN && video2.language.equals(language.iso6393))
                {
                    return video2;
                }
            }

            for (language = videos.iterator(); language.hasNext();)
            {
                Video video = (Video)language.next();
                if (video.type == Video.Type.MAIN && video.language.equals(com.showmax.lib.api.io.ApiConstants.AppLanguage.ENG.toString()))
                {
                    return video;
                }
            }

            language = videos.iterator();
            Video video1;
            do
            {
                if (!language.hasNext())
                {
                    break label0;
                }
                video1 = (Video)language.next();
            } while (video1.type != Video.Type.MAIN);
            return video1;
        }
        return null;
    }

    public Video getMainVideo(String s)
    {
label0:
        {
            if (videos == null || videos.isEmpty())
            {
                break label0;
            }
            for (Iterator iterator = videos.iterator(); iterator.hasNext();)
            {
                Video video2 = (Video)iterator.next();
                if (video2.type == Video.Type.MAIN && video2.language.equals(s))
                {
                    return video2;
                }
            }

            for (s = videos.iterator(); s.hasNext();)
            {
                Video video = (Video)s.next();
                if (video.type == Video.Type.MAIN && video.language.equals(com.showmax.lib.api.io.ApiConstants.AppLanguage.ENG.toString()))
                {
                    return video;
                }
            }

            s = videos.iterator();
            Video video1;
            do
            {
                if (!s.hasNext())
                {
                    break label0;
                }
                video1 = (Video)s.next();
            } while (video1.type != Video.Type.MAIN);
            return video1;
        }
        return null;
    }

    public ArrayList getMainVideoAudioLanguages()
    {
        return getVideoAudioLanguages(false);
    }

    public Image getPosterImage()
    {
label0:
        {
            if (images == null || images.isEmpty())
            {
                break label0;
            }
            Iterator iterator = images.iterator();
            Image image;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                image = (Image)iterator.next();
            } while (image.type != Image.Type.POSTER || image.orientation != Image.Orientation.PORTRAIT);
            return image;
        }
        return null;
    }

    public Asset getSeason(int i)
    {
label0:
        {
            if (seasons == null || seasons.isEmpty())
            {
                break label0;
            }
            Iterator iterator = seasons.iterator();
            Asset asset;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                asset = (Asset)iterator.next();
            } while (asset.number != i);
            return asset;
        }
        return null;
    }

    public Video getTrailerVideo(Language language)
    {
label0:
        {
            if (videos == null || videos.isEmpty())
            {
                break label0;
            }
            for (Iterator iterator = videos.iterator(); iterator.hasNext();)
            {
                Video video2 = (Video)iterator.next();
                if (video2.type == Video.Type.TRAILER && video2.language.equals(language.iso6393))
                {
                    return video2;
                }
            }

            for (language = videos.iterator(); language.hasNext();)
            {
                Video video = (Video)language.next();
                if (video.type == Video.Type.TRAILER && video.language.equals(com.showmax.lib.api.io.ApiConstants.AppLanguage.ENG.toString()))
                {
                    return video;
                }
            }

            language = videos.iterator();
            Video video1;
            do
            {
                if (!language.hasNext())
                {
                    break label0;
                }
                video1 = (Video)language.next();
            } while (video1.type != Video.Type.TRAILER);
            return video1;
        }
        return null;
    }

    public ArrayList getTrailerVideoAudioLanguages()
    {
        return getVideoAudioLanguages(true);
    }

    public boolean hasMainVideo(Language language)
    {
label0:
        {
            if (audioLanguages == null || audioLanguages.isEmpty())
            {
                break label0;
            }
            Iterator iterator = audioLanguages.iterator();
            String s;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                s = (String)iterator.next();
            } while (!language.iso6393.equals(s));
            return true;
        }
        return false;
    }

    public boolean hasMainVideoSubtitles(Language language)
    {
label0:
        {
            if (subtitlesLanguages == null || subtitlesLanguages.isEmpty())
            {
                break label0;
            }
            Iterator iterator = subtitlesLanguages.iterator();
            String s;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                s = (String)iterator.next();
            } while (!language.iso6393.equals(s));
            return true;
        }
        return false;
    }

    public void includeParentTvShowsImages(Asset asset)
    {
        if (type == Type.EPISODE && asset != null)
        {
            if (tvSerie == null)
            {
                tvSerie = new Asset();
            }
            tvSerie.images = asset.images;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append(id).append(", ").append(title).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        byte byte1 = -1;
        parcel.writeStringList(audioLanguages);
        parcel.writeTypedList(cast);
        parcel.writeTypedList(categories);
        parcel.writeParcelable(contentWarning, i);
        parcel.writeTypedList(crew);
        parcel.writeString(description);
        parcel.writeTypedList(episodes);
        parcel.writeString(id);
        parcel.writeTypedList(images);
        parcel.writeString(link);
        byte byte0;
        int j;
        if (metadataDirection != null)
        {
            j = metadataDirection.ordinal();
        } else
        {
            j = -1;
        }
        parcel.writeInt(j);
        parcel.writeString(metadataLanguage);
        parcel.writeInt(number);
        parcel.writeString(originalTitle);
        parcel.writeParcelable(ratings, i);
        parcel.writeParcelable(season, i);
        parcel.writeTypedList(seasons);
        parcel.writeString(sectionSlug);
        parcel.writeStringList(subtitlesLanguages);
        parcel.writeString(title);
        if (trial)
        {
            byte0 = 1;
        } else
        {
            byte0 = 0;
        }
        parcel.writeByte(byte0);
        parcel.writeParcelable(tvSerie, i);
        if (type != null)
        {
            i = type.ordinal();
        } else
        {
            i = -1;
        }
        parcel.writeInt(i);
        parcel.writeTypedList(videos);
        i = byte1;
        if (vodModel != null)
        {
            i = vodModel.ordinal();
        }
        parcel.writeInt(i);
        parcel.writeInt(year);
    }

}
