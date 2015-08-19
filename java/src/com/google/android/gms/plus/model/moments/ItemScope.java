// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.zztr;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public interface ItemScope
    extends Freezable
{
    public static class Builder
    {

        private String mName;
        private String zzFA;
        private String zzZO;
        private double zzalQ;
        private double zzalR;
        private final Set zzauX = new HashSet();
        private zztr zzauY;
        private List zzauZ;
        private String zzavA;
        private zztr zzavB;
        private zztr zzavC;
        private zztr zzavD;
        private List zzavE;
        private String zzavF;
        private String zzavG;
        private String zzavH;
        private String zzavI;
        private zztr zzavJ;
        private String zzavK;
        private String zzavL;
        private String zzavM;
        private zztr zzavN;
        private String zzavO;
        private String zzavP;
        private String zzavQ;
        private String zzavR;
        private zztr zzava;
        private String zzavb;
        private String zzavc;
        private String zzavd;
        private List zzave;
        private int zzavf;
        private List zzavg;
        private zztr zzavh;
        private List zzavi;
        private String zzavj;
        private String zzavk;
        private zztr zzavl;
        private String zzavm;
        private String zzavn;
        private List zzavo;
        private String zzavp;
        private String zzavq;
        private String zzavr;
        private String zzavs;
        private String zzavt;
        private String zzavu;
        private String zzavv;
        private String zzavw;
        private zztr zzavx;
        private String zzavy;
        private String zzavz;
        private String zzpn;
        private String zzxV;
        private String zzxX;

        public ItemScope build()
        {
            return new zztr(zzauX, zzauY, zzauZ, zzava, zzavb, zzavc, zzavd, zzave, zzavf, zzavg, zzavh, zzavi, zzavj, zzavk, zzavl, zzavm, zzavn, zzpn, zzavo, zzavp, zzavq, zzavr, zzZO, zzavs, zzavt, zzavu, zzavv, zzavw, zzavx, zzavy, zzavz, zzFA, zzavA, zzavB, zzalQ, zzavC, zzalR, mName, zzavD, zzavE, zzavF, zzavG, zzavH, zzavI, zzavJ, zzavK, zzavL, zzavM, zzavN, zzavO, zzavP, zzxV, zzxX, zzavQ, zzavR);
        }

        public Builder setAbout(ItemScope itemscope)
        {
            zzauY = (zztr)itemscope;
            zzauX.add(Integer.valueOf(2));
            return this;
        }

        public Builder setAdditionalName(List list)
        {
            zzauZ = list;
            zzauX.add(Integer.valueOf(3));
            return this;
        }

        public Builder setAddress(ItemScope itemscope)
        {
            zzava = (zztr)itemscope;
            zzauX.add(Integer.valueOf(4));
            return this;
        }

        public Builder setAddressCountry(String s)
        {
            zzavb = s;
            zzauX.add(Integer.valueOf(5));
            return this;
        }

        public Builder setAddressLocality(String s)
        {
            zzavc = s;
            zzauX.add(Integer.valueOf(6));
            return this;
        }

        public Builder setAddressRegion(String s)
        {
            zzavd = s;
            zzauX.add(Integer.valueOf(7));
            return this;
        }

        public Builder setAssociated_media(List list)
        {
            zzave = list;
            zzauX.add(Integer.valueOf(8));
            return this;
        }

        public Builder setAttendeeCount(int i)
        {
            zzavf = i;
            zzauX.add(Integer.valueOf(9));
            return this;
        }

        public Builder setAttendees(List list)
        {
            zzavg = list;
            zzauX.add(Integer.valueOf(10));
            return this;
        }

        public Builder setAudio(ItemScope itemscope)
        {
            zzavh = (zztr)itemscope;
            zzauX.add(Integer.valueOf(11));
            return this;
        }

        public Builder setAuthor(List list)
        {
            zzavi = list;
            zzauX.add(Integer.valueOf(12));
            return this;
        }

        public Builder setBestRating(String s)
        {
            zzavj = s;
            zzauX.add(Integer.valueOf(13));
            return this;
        }

        public Builder setBirthDate(String s)
        {
            zzavk = s;
            zzauX.add(Integer.valueOf(14));
            return this;
        }

        public Builder setByArtist(ItemScope itemscope)
        {
            zzavl = (zztr)itemscope;
            zzauX.add(Integer.valueOf(15));
            return this;
        }

        public Builder setCaption(String s)
        {
            zzavm = s;
            zzauX.add(Integer.valueOf(16));
            return this;
        }

        public Builder setContentSize(String s)
        {
            zzavn = s;
            zzauX.add(Integer.valueOf(17));
            return this;
        }

        public Builder setContentUrl(String s)
        {
            zzpn = s;
            zzauX.add(Integer.valueOf(18));
            return this;
        }

        public Builder setContributor(List list)
        {
            zzavo = list;
            zzauX.add(Integer.valueOf(19));
            return this;
        }

        public Builder setDateCreated(String s)
        {
            zzavp = s;
            zzauX.add(Integer.valueOf(20));
            return this;
        }

        public Builder setDateModified(String s)
        {
            zzavq = s;
            zzauX.add(Integer.valueOf(21));
            return this;
        }

        public Builder setDatePublished(String s)
        {
            zzavr = s;
            zzauX.add(Integer.valueOf(22));
            return this;
        }

        public Builder setDescription(String s)
        {
            zzZO = s;
            zzauX.add(Integer.valueOf(23));
            return this;
        }

        public Builder setDuration(String s)
        {
            zzavs = s;
            zzauX.add(Integer.valueOf(24));
            return this;
        }

        public Builder setEmbedUrl(String s)
        {
            zzavt = s;
            zzauX.add(Integer.valueOf(25));
            return this;
        }

        public Builder setEndDate(String s)
        {
            zzavu = s;
            zzauX.add(Integer.valueOf(26));
            return this;
        }

        public Builder setFamilyName(String s)
        {
            zzavv = s;
            zzauX.add(Integer.valueOf(27));
            return this;
        }

        public Builder setGender(String s)
        {
            zzavw = s;
            zzauX.add(Integer.valueOf(28));
            return this;
        }

        public Builder setGeo(ItemScope itemscope)
        {
            zzavx = (zztr)itemscope;
            zzauX.add(Integer.valueOf(29));
            return this;
        }

        public Builder setGivenName(String s)
        {
            zzavy = s;
            zzauX.add(Integer.valueOf(30));
            return this;
        }

        public Builder setHeight(String s)
        {
            zzavz = s;
            zzauX.add(Integer.valueOf(31));
            return this;
        }

        public Builder setId(String s)
        {
            zzFA = s;
            zzauX.add(Integer.valueOf(32));
            return this;
        }

        public Builder setImage(String s)
        {
            zzavA = s;
            zzauX.add(Integer.valueOf(33));
            return this;
        }

        public Builder setInAlbum(ItemScope itemscope)
        {
            zzavB = (zztr)itemscope;
            zzauX.add(Integer.valueOf(34));
            return this;
        }

        public Builder setLatitude(double d)
        {
            zzalQ = d;
            zzauX.add(Integer.valueOf(36));
            return this;
        }

        public Builder setLocation(ItemScope itemscope)
        {
            zzavC = (zztr)itemscope;
            zzauX.add(Integer.valueOf(37));
            return this;
        }

        public Builder setLongitude(double d)
        {
            zzalR = d;
            zzauX.add(Integer.valueOf(38));
            return this;
        }

        public Builder setName(String s)
        {
            mName = s;
            zzauX.add(Integer.valueOf(39));
            return this;
        }

        public Builder setPartOfTVSeries(ItemScope itemscope)
        {
            zzavD = (zztr)itemscope;
            zzauX.add(Integer.valueOf(40));
            return this;
        }

        public Builder setPerformers(List list)
        {
            zzavE = list;
            zzauX.add(Integer.valueOf(41));
            return this;
        }

        public Builder setPlayerType(String s)
        {
            zzavF = s;
            zzauX.add(Integer.valueOf(42));
            return this;
        }

        public Builder setPostOfficeBoxNumber(String s)
        {
            zzavG = s;
            zzauX.add(Integer.valueOf(43));
            return this;
        }

        public Builder setPostalCode(String s)
        {
            zzavH = s;
            zzauX.add(Integer.valueOf(44));
            return this;
        }

        public Builder setRatingValue(String s)
        {
            zzavI = s;
            zzauX.add(Integer.valueOf(45));
            return this;
        }

        public Builder setReviewRating(ItemScope itemscope)
        {
            zzavJ = (zztr)itemscope;
            zzauX.add(Integer.valueOf(46));
            return this;
        }

        public Builder setStartDate(String s)
        {
            zzavK = s;
            zzauX.add(Integer.valueOf(47));
            return this;
        }

        public Builder setStreetAddress(String s)
        {
            zzavL = s;
            zzauX.add(Integer.valueOf(48));
            return this;
        }

        public Builder setText(String s)
        {
            zzavM = s;
            zzauX.add(Integer.valueOf(49));
            return this;
        }

        public Builder setThumbnail(ItemScope itemscope)
        {
            zzavN = (zztr)itemscope;
            zzauX.add(Integer.valueOf(50));
            return this;
        }

        public Builder setThumbnailUrl(String s)
        {
            zzavO = s;
            zzauX.add(Integer.valueOf(51));
            return this;
        }

        public Builder setTickerSymbol(String s)
        {
            zzavP = s;
            zzauX.add(Integer.valueOf(52));
            return this;
        }

        public Builder setType(String s)
        {
            zzxV = s;
            zzauX.add(Integer.valueOf(53));
            return this;
        }

        public Builder setUrl(String s)
        {
            zzxX = s;
            zzauX.add(Integer.valueOf(54));
            return this;
        }

        public Builder setWidth(String s)
        {
            zzavQ = s;
            zzauX.add(Integer.valueOf(55));
            return this;
        }

        public Builder setWorstRating(String s)
        {
            zzavR = s;
            zzauX.add(Integer.valueOf(56));
            return this;
        }

        public Builder()
        {
        }
    }


    public abstract ItemScope getAbout();

    public abstract List getAdditionalName();

    public abstract ItemScope getAddress();

    public abstract String getAddressCountry();

    public abstract String getAddressLocality();

    public abstract String getAddressRegion();

    public abstract List getAssociated_media();

    public abstract int getAttendeeCount();

    public abstract List getAttendees();

    public abstract ItemScope getAudio();

    public abstract List getAuthor();

    public abstract String getBestRating();

    public abstract String getBirthDate();

    public abstract ItemScope getByArtist();

    public abstract String getCaption();

    public abstract String getContentSize();

    public abstract String getContentUrl();

    public abstract List getContributor();

    public abstract String getDateCreated();

    public abstract String getDateModified();

    public abstract String getDatePublished();

    public abstract String getDescription();

    public abstract String getDuration();

    public abstract String getEmbedUrl();

    public abstract String getEndDate();

    public abstract String getFamilyName();

    public abstract String getGender();

    public abstract ItemScope getGeo();

    public abstract String getGivenName();

    public abstract String getHeight();

    public abstract String getId();

    public abstract String getImage();

    public abstract ItemScope getInAlbum();

    public abstract double getLatitude();

    public abstract ItemScope getLocation();

    public abstract double getLongitude();

    public abstract String getName();

    public abstract ItemScope getPartOfTVSeries();

    public abstract List getPerformers();

    public abstract String getPlayerType();

    public abstract String getPostOfficeBoxNumber();

    public abstract String getPostalCode();

    public abstract String getRatingValue();

    public abstract ItemScope getReviewRating();

    public abstract String getStartDate();

    public abstract String getStreetAddress();

    public abstract String getText();

    public abstract ItemScope getThumbnail();

    public abstract String getThumbnailUrl();

    public abstract String getTickerSymbol();

    public abstract String getType();

    public abstract String getUrl();

    public abstract String getWidth();

    public abstract String getWorstRating();

    public abstract boolean hasAbout();

    public abstract boolean hasAdditionalName();

    public abstract boolean hasAddress();

    public abstract boolean hasAddressCountry();

    public abstract boolean hasAddressLocality();

    public abstract boolean hasAddressRegion();

    public abstract boolean hasAssociated_media();

    public abstract boolean hasAttendeeCount();

    public abstract boolean hasAttendees();

    public abstract boolean hasAudio();

    public abstract boolean hasAuthor();

    public abstract boolean hasBestRating();

    public abstract boolean hasBirthDate();

    public abstract boolean hasByArtist();

    public abstract boolean hasCaption();

    public abstract boolean hasContentSize();

    public abstract boolean hasContentUrl();

    public abstract boolean hasContributor();

    public abstract boolean hasDateCreated();

    public abstract boolean hasDateModified();

    public abstract boolean hasDatePublished();

    public abstract boolean hasDescription();

    public abstract boolean hasDuration();

    public abstract boolean hasEmbedUrl();

    public abstract boolean hasEndDate();

    public abstract boolean hasFamilyName();

    public abstract boolean hasGender();

    public abstract boolean hasGeo();

    public abstract boolean hasGivenName();

    public abstract boolean hasHeight();

    public abstract boolean hasId();

    public abstract boolean hasImage();

    public abstract boolean hasInAlbum();

    public abstract boolean hasLatitude();

    public abstract boolean hasLocation();

    public abstract boolean hasLongitude();

    public abstract boolean hasName();

    public abstract boolean hasPartOfTVSeries();

    public abstract boolean hasPerformers();

    public abstract boolean hasPlayerType();

    public abstract boolean hasPostOfficeBoxNumber();

    public abstract boolean hasPostalCode();

    public abstract boolean hasRatingValue();

    public abstract boolean hasReviewRating();

    public abstract boolean hasStartDate();

    public abstract boolean hasStreetAddress();

    public abstract boolean hasText();

    public abstract boolean hasThumbnail();

    public abstract boolean hasThumbnailUrl();

    public abstract boolean hasTickerSymbol();

    public abstract boolean hasType();

    public abstract boolean hasUrl();

    public abstract boolean hasWidth();

    public abstract boolean hasWorstRating();
}
