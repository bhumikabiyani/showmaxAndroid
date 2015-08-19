// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;

import android.app.Application;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.utils.StorageUtils;

public class MauImage
{
    public static final class ImageType extends Enum
    {

        private static final ImageType $VALUES[];
        public static final ImageType BANNER;
        public static final ImageType BRANDING;
        public static final ImageType CONTENT_WARNING;
        public static final ImageType LANDSCAPE;
        public static final ImageType MOVIE_DETAIL_BANNER;
        public static final ImageType PORTRAIT;
        public static final ImageType TV_SERIES_DETAIL_BANNER;

        public static ImageType valueOf(String s)
        {
            return (ImageType)Enum.valueOf(com/showmax/lib/api/utils/MauImage$ImageType, s);
        }

        public static ImageType[] values()
        {
            return (ImageType[])$VALUES.clone();
        }

        static 
        {
            PORTRAIT = new ImageType("PORTRAIT", 0);
            LANDSCAPE = new ImageType("LANDSCAPE", 1);
            BANNER = new ImageType("BANNER", 2);
            CONTENT_WARNING = new ImageType("CONTENT_WARNING", 3);
            BRANDING = new ImageType("BRANDING", 4);
            TV_SERIES_DETAIL_BANNER = new ImageType("TV_SERIES_DETAIL_BANNER", 5);
            MOVIE_DETAIL_BANNER = new ImageType("MOVIE_DETAIL_BANNER", 6);
            $VALUES = (new ImageType[] {
                PORTRAIT, LANDSCAPE, BANNER, CONTENT_WARNING, BRANDING, TV_SERIES_DETAIL_BANNER, MOVIE_DETAIL_BANNER
            });
        }

        private ImageType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final boolean LOG = false;
    public static final int MEMORY_CACHE_SIZE = 0x200000;
    public static final int THREAD_POOL_SIZE = 2;
    private static DisplayImageOptions sBannerImgOptions;
    private static DisplayImageOptions sBrandingImgOptions;
    private static DisplayImageOptions sContentWarningImgOptions;
    private static DisplayImageOptions sLandscapeImgOptions;
    private static DisplayImageOptions sMovieDetailImgOptions;
    private static DisplayImageOptions sPortraitImgOptions;
    private static DisplayImageOptions sTvSeriesDetailImgOptions;

    public MauImage()
    {
    }

    public static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int i1 = options.outHeight;
        int j1 = options.outWidth;
        int l = 1;
        int k = 1;
        if (i1 > j || j1 > i)
        {
            i1 /= 2;
            j1 /= 2;
            do
            {
                l = k;
                if (i1 / k <= j)
                {
                    break;
                }
                l = k;
                if (j1 / k <= i)
                {
                    break;
                }
                k *= 2;
            } while (true);
        }
        return l;
    }

    public static Bitmap decodeSampledBitmapFromResource(Resources resources, int i, int j, int k)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = calculateInSampleSize(options, j, k);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    public static void initImageLoader(Application application, int i, int j, int k, int l, int i1, boolean flag)
    {
        if (application == null)
        {
            throw new IllegalArgumentException("app is null");
        }
        StorageUtils.getCacheDirectory(application);
        sPortraitImgOptions = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).cacheInMemory(true).cacheOnDisk(true).imageScaleType(ImageScaleType.IN_SAMPLE_POWER_OF_2).bitmapConfig(android.graphics.Bitmap.Config.RGB_565).resetViewBeforeLoading(false).displayer(new FadeInBitmapDisplayer(250)).showImageForEmptyUri(i).showImageOnFail(i).showImageOnLoading(i).build();
        sLandscapeImgOptions = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).cloneFrom(sPortraitImgOptions).showImageForEmptyUri(j).showImageOnFail(j).showImageOnLoading(j).build();
        sBannerImgOptions = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).cloneFrom(sPortraitImgOptions).showImageForEmptyUri(k).showImageOnFail(k).showImageOnLoading(k).build();
        sContentWarningImgOptions = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).cloneFrom(sPortraitImgOptions).showImageForEmptyUri(0).showImageOnFail(0).showImageOnLoading(0).build();
        sMovieDetailImgOptions = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).cloneFrom(sPortraitImgOptions).showImageForEmptyUri(l).showImageOnFail(l).showImageOnLoading(l).build();
        sTvSeriesDetailImgOptions = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).cloneFrom(sPortraitImgOptions).showImageForEmptyUri(i1).showImageOnFail(i1).showImageOnLoading(i1).build();
        sBrandingImgOptions = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).cloneFrom(sContentWarningImgOptions).build();
        application = (new com.nostra13.universalimageloader.core.ImageLoaderConfiguration.Builder(application)).defaultDisplayImageOptions(sPortraitImgOptions).threadPoolSize(2);
        if (flag)
        {
            application.writeDebugLogs();
        }
        ImageLoader.getInstance().init(application.build());
    }

    public static void loadImage(String s, ImageView imageview, ImageType imagetype)
    {
        loadImage(s, ((ImageAware) (new ImageViewAware(imageview))), imagetype);
    }

    public static void loadImage(String s, ImageView imageview, ImageType imagetype, int i)
    {
        loadImage(s, ((ImageAware) (new ImageViewAware(imageview))), imagetype, i);
    }

    public static void loadImage(String s, ImageView imageview, ImageType imagetype, int i, ImageLoadingListener imageloadinglistener)
    {
        loadImage(s, ((ImageAware) (new ImageViewAware(imageview))), imagetype, i, imageloadinglistener);
    }

    public static void loadImage(String s, ImageView imageview, ImageType imagetype, ImageLoadingListener imageloadinglistener)
    {
        loadImage(s, ((ImageAware) (new ImageViewAware(imageview))), imagetype, imageloadinglistener);
    }

    public static void loadImage(String s, ImageAware imageaware, ImageType imagetype)
    {
        loadImage(s, imageaware, imagetype, ((ImageLoadingListener) (null)));
    }

    public static void loadImage(String s, ImageAware imageaware, ImageType imagetype, int i)
    {
        loadImage(s, imageaware, imagetype, i, null);
    }

    public static void loadImage(String s, ImageAware imageaware, ImageType imagetype, int i, ImageLoadingListener imageloadinglistener)
    {
        if (i < 1)
        {
            throw new IllegalArgumentException("height must be greater than 0");
        } else
        {
            loadImage((new StringBuilder()).append(s).append("/x").append(String.valueOf(i)).toString(), imageaware, imagetype, imageloadinglistener);
            return;
        }
    }

    public static void loadImage(String s, ImageAware imageaware, ImageType imagetype, ImageLoadingListener imageloadinglistener)
    {
        static class _cls1
        {

            static final int $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[];

            static 
            {
                $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType = new int[ImageType.values().length];
                try
                {
                    $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ImageType.LANDSCAPE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ImageType.BANNER.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ImageType.CONTENT_WARNING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ImageType.BRANDING.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ImageType.MOVIE_DETAIL_BANNER.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType[ImageType.TV_SERIES_DETAIL_BANNER.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.showmax.lib.api.utils.MauImage.ImageType[imagetype.ordinal()];
        JVM INSTR tableswitch 1 6: default 48
    //                   1 63
    //                   2 70
    //                   3 77
    //                   4 84
    //                   5 91
    //                   6 98;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        imagetype = sPortraitImgOptions;
_L9:
        ImageLoader.getInstance().displayImage(s, imageaware, imagetype, imageloadinglistener);
        return;
_L2:
        imagetype = sLandscapeImgOptions;
        continue; /* Loop/switch isn't completed */
_L3:
        imagetype = sBannerImgOptions;
        continue; /* Loop/switch isn't completed */
_L4:
        imagetype = sContentWarningImgOptions;
        continue; /* Loop/switch isn't completed */
_L5:
        imagetype = sBrandingImgOptions;
        continue; /* Loop/switch isn't completed */
_L6:
        imagetype = sMovieDetailImgOptions;
        continue; /* Loop/switch isn't completed */
_L7:
        imagetype = sTvSeriesDetailImgOptions;
        if (true) goto _L9; else goto _L8
_L8:
    }
}
