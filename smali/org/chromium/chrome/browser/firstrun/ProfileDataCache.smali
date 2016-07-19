.class public Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;
.super Ljava/lang/Object;
.source "ProfileDataCache.java"

# interfaces
.implements Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;


# instance fields
.field private final mCacheEntries:Ljava/util/HashMap;

.field private final mContext:Landroid/content/Context;

.field private final mImageSizePx:I

.field private final mImageStrokeColor:I

.field private final mImageStrokePx:I

.field private mObserver:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;

.field private final mPlaceholderImage:Landroid/graphics/Bitmap;

.field private mProfile:Lorg/chromium/chrome/browser/profiles/Profile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 6

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mCacheEntries:Ljava/util/HashMap;

    .line 60
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->addObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 65
    invoke-static {p1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v0

    .line 66
    const-wide/high16 v2, 0x4061000000000000L    # 136.0

    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mImageSizePx:I

    .line 67
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mImageStrokePx:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mImageStrokeColor:I

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->fre_placeholder:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mPlaceholderImage:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->update()V

    .line 75
    return-void
.end method

.method private getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 155
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 159
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mImageStrokePx:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v7

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v1, v5, v6, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 163
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 164
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 166
    iget v3, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mImageStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 169
    iget v3, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mImageStrokePx:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->removeObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mObserver:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;

    .line 138
    return-void
.end method

.method public getFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mCacheEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;

    .line 120
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;->fullName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGivenName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mCacheEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;

    .line 131
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;->givenName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mCacheEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;

    .line 109
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mPlaceholderImage:Landroid/graphics/Bitmap;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;->picture:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onProfileDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 143
    invoke-direct {p0, p4}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mCacheEntries:Ljava/util/HashMap;

    new-instance v2, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;

    invoke-direct {v2, v0, p2, p3}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mObserver:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mObserver:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;

    invoke-interface {v1, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;->onProfileDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mObserver:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;

    .line 180
    return-void
.end method

.method public setProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 83
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->update()V

    .line 84
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 94
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 95
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mCacheEntries:Ljava/util/HashMap;

    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 96
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    aget-object v4, v1, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget v5, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->mImageSizePx:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->startFetchingAccountInfoFor(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V

    .line 94
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
