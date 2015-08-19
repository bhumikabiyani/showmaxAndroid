// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.model.moments;

import com.google.android.gms.internal.zztr;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.plus.model.moments:
//            ItemScope

public static class A
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

    public zzavR setAbout(ItemScope itemscope)
    {
        zzauY = (zztr)itemscope;
        zzauX.add(Integer.valueOf(2));
        return this;
    }

    public zzauX setAdditionalName(List list)
    {
        zzauZ = list;
        zzauX.add(Integer.valueOf(3));
        return this;
    }

    public zzauX setAddress(ItemScope itemscope)
    {
        zzava = (zztr)itemscope;
        zzauX.add(Integer.valueOf(4));
        return this;
    }

    public zzauX setAddressCountry(String s)
    {
        zzavb = s;
        zzauX.add(Integer.valueOf(5));
        return this;
    }

    public zzauX setAddressLocality(String s)
    {
        zzavc = s;
        zzauX.add(Integer.valueOf(6));
        return this;
    }

    public zzauX setAddressRegion(String s)
    {
        zzavd = s;
        zzauX.add(Integer.valueOf(7));
        return this;
    }

    public zzauX setAssociated_media(List list)
    {
        zzave = list;
        zzauX.add(Integer.valueOf(8));
        return this;
    }

    public zzauX setAttendeeCount(int i)
    {
        zzavf = i;
        zzauX.add(Integer.valueOf(9));
        return this;
    }

    public zzauX setAttendees(List list)
    {
        zzavg = list;
        zzauX.add(Integer.valueOf(10));
        return this;
    }

    public zzauX setAudio(ItemScope itemscope)
    {
        zzavh = (zztr)itemscope;
        zzauX.add(Integer.valueOf(11));
        return this;
    }

    public zzauX setAuthor(List list)
    {
        zzavi = list;
        zzauX.add(Integer.valueOf(12));
        return this;
    }

    public zzauX setBestRating(String s)
    {
        zzavj = s;
        zzauX.add(Integer.valueOf(13));
        return this;
    }

    public zzauX setBirthDate(String s)
    {
        zzavk = s;
        zzauX.add(Integer.valueOf(14));
        return this;
    }

    public zzauX setByArtist(ItemScope itemscope)
    {
        zzavl = (zztr)itemscope;
        zzauX.add(Integer.valueOf(15));
        return this;
    }

    public zzauX setCaption(String s)
    {
        zzavm = s;
        zzauX.add(Integer.valueOf(16));
        return this;
    }

    public zzauX setContentSize(String s)
    {
        zzavn = s;
        zzauX.add(Integer.valueOf(17));
        return this;
    }

    public zzauX setContentUrl(String s)
    {
        zzpn = s;
        zzauX.add(Integer.valueOf(18));
        return this;
    }

    public zzauX setContributor(List list)
    {
        zzavo = list;
        zzauX.add(Integer.valueOf(19));
        return this;
    }

    public zzauX setDateCreated(String s)
    {
        zzavp = s;
        zzauX.add(Integer.valueOf(20));
        return this;
    }

    public zzauX setDateModified(String s)
    {
        zzavq = s;
        zzauX.add(Integer.valueOf(21));
        return this;
    }

    public zzauX setDatePublished(String s)
    {
        zzavr = s;
        zzauX.add(Integer.valueOf(22));
        return this;
    }

    public zzauX setDescription(String s)
    {
        zzZO = s;
        zzauX.add(Integer.valueOf(23));
        return this;
    }

    public zzauX setDuration(String s)
    {
        zzavs = s;
        zzauX.add(Integer.valueOf(24));
        return this;
    }

    public zzauX setEmbedUrl(String s)
    {
        zzavt = s;
        zzauX.add(Integer.valueOf(25));
        return this;
    }

    public zzauX setEndDate(String s)
    {
        zzavu = s;
        zzauX.add(Integer.valueOf(26));
        return this;
    }

    public zzauX setFamilyName(String s)
    {
        zzavv = s;
        zzauX.add(Integer.valueOf(27));
        return this;
    }

    public zzauX setGender(String s)
    {
        zzavw = s;
        zzauX.add(Integer.valueOf(28));
        return this;
    }

    public zzauX setGeo(ItemScope itemscope)
    {
        zzavx = (zztr)itemscope;
        zzauX.add(Integer.valueOf(29));
        return this;
    }

    public zzauX setGivenName(String s)
    {
        zzavy = s;
        zzauX.add(Integer.valueOf(30));
        return this;
    }

    public zzauX setHeight(String s)
    {
        zzavz = s;
        zzauX.add(Integer.valueOf(31));
        return this;
    }

    public zzauX setId(String s)
    {
        zzFA = s;
        zzauX.add(Integer.valueOf(32));
        return this;
    }

    public zzauX setImage(String s)
    {
        zzavA = s;
        zzauX.add(Integer.valueOf(33));
        return this;
    }

    public zzauX setInAlbum(ItemScope itemscope)
    {
        zzavB = (zztr)itemscope;
        zzauX.add(Integer.valueOf(34));
        return this;
    }

    public zzauX setLatitude(double d)
    {
        zzalQ = d;
        zzauX.add(Integer.valueOf(36));
        return this;
    }

    public zzauX setLocation(ItemScope itemscope)
    {
        zzavC = (zztr)itemscope;
        zzauX.add(Integer.valueOf(37));
        return this;
    }

    public zzauX setLongitude(double d)
    {
        zzalR = d;
        zzauX.add(Integer.valueOf(38));
        return this;
    }

    public zzauX setName(String s)
    {
        mName = s;
        zzauX.add(Integer.valueOf(39));
        return this;
    }

    public zzauX setPartOfTVSeries(ItemScope itemscope)
    {
        zzavD = (zztr)itemscope;
        zzauX.add(Integer.valueOf(40));
        return this;
    }

    public zzauX setPerformers(List list)
    {
        zzavE = list;
        zzauX.add(Integer.valueOf(41));
        return this;
    }

    public zzauX setPlayerType(String s)
    {
        zzavF = s;
        zzauX.add(Integer.valueOf(42));
        return this;
    }

    public zzauX setPostOfficeBoxNumber(String s)
    {
        zzavG = s;
        zzauX.add(Integer.valueOf(43));
        return this;
    }

    public zzauX setPostalCode(String s)
    {
        zzavH = s;
        zzauX.add(Integer.valueOf(44));
        return this;
    }

    public zzauX setRatingValue(String s)
    {
        zzavI = s;
        zzauX.add(Integer.valueOf(45));
        return this;
    }

    public zzauX setReviewRating(ItemScope itemscope)
    {
        zzavJ = (zztr)itemscope;
        zzauX.add(Integer.valueOf(46));
        return this;
    }

    public zzauX setStartDate(String s)
    {
        zzavK = s;
        zzauX.add(Integer.valueOf(47));
        return this;
    }

    public zzauX setStreetAddress(String s)
    {
        zzavL = s;
        zzauX.add(Integer.valueOf(48));
        return this;
    }

    public zzauX setText(String s)
    {
        zzavM = s;
        zzauX.add(Integer.valueOf(49));
        return this;
    }

    public zzauX setThumbnail(ItemScope itemscope)
    {
        zzavN = (zztr)itemscope;
        zzauX.add(Integer.valueOf(50));
        return this;
    }

    public zzauX setThumbnailUrl(String s)
    {
        zzavO = s;
        zzauX.add(Integer.valueOf(51));
        return this;
    }

    public zzauX setTickerSymbol(String s)
    {
        zzavP = s;
        zzauX.add(Integer.valueOf(52));
        return this;
    }

    public zzauX setType(String s)
    {
        zzxV = s;
        zzauX.add(Integer.valueOf(53));
        return this;
    }

    public zzauX setUrl(String s)
    {
        zzxX = s;
        zzauX.add(Integer.valueOf(54));
        return this;
    }

    public zzauX setWidth(String s)
    {
        zzavQ = s;
        zzauX.add(Integer.valueOf(55));
        return this;
    }

    public zzauX setWorstRating(String s)
    {
        zzavR = s;
        zzauX.add(Integer.valueOf(56));
        return this;
    }

    public A()
    {
    }
}
