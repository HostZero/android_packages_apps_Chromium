.class public Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
.super Ljava/lang/Object;
.source "TabContentManager.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mContentOffsetProvider:Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;

.field private final mContext:Landroid/content/Context;

.field private final mDecompressRequests:Landroid/util/SparseArray;

.field private final mFullResThumbnailsMaxSize:I

.field private final mListeners:Ljava/util/ArrayList;

.field private mNativeTabContentManager:J

.field private mPriorityTabIds:[I

.field private mSnapshotsEnabled:Z

.field private final mThumbnailScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;Z)V
    .locals 8

    .prologue
    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mDecompressRequests:Landroid/util/SparseArray;

    .line 94
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContentOffsetProvider:Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;

    .line 96
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mSnapshotsEnabled:Z

    .line 99
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$integer;->default_thumbnail_cache_size:I

    const-string/jumbo v3, "thumbnails"

    invoke-static {v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->getIntegerResourceWithOverride(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 102
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mFullResThumbnailsMaxSize:I

    .line 104
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$integer;->default_compression_queue_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 106
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/chromium/chrome/R$integer;->default_write_queue_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 111
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    sget v5, Lorg/chromium/chrome/R$integer;->default_approximation_thumbnail_cache_size:I

    const-string/jumbo v6, "approximation-thumbnails"

    invoke-static {v2, v5, v6}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->getIntegerResourceWithOverride(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 117
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 118
    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    div-float/2addr v0, v5

    .line 121
    const/4 v5, 0x0

    .line 130
    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mThumbnailScale:F

    .line 132
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mFullResThumbnailsMaxSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mPriorityTabIds:[I

    move-object v0, p0

    .line 134
    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeInit(IIIIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    .line 137
    return-void

    .line 125
    :cond_0
    cmpl-float v6, v5, v7

    if-lez v6, :cond_1

    .line 126
    div-float v0, v7, v5

    .line 128
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static getIntegerResourceWithOverride(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 80
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    :cond_0
    return v0
.end method

.method private getNativePtr()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    return-wide v0
.end method

.method private native nativeCacheTab(JLjava/lang/Object;Ljava/lang/Object;F)V
.end method

.method private native nativeCacheTabWithBitmap(JLjava/lang/Object;Ljava/lang/Object;F)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeGetDecompressedThumbnail(JI)V
.end method

.method private native nativeHasFullCachedThumbnail(JI)Z
.end method

.method private native nativeInit(IIIIZ)J
.end method

.method private native nativeInvalidateIfChanged(JILjava/lang/String;)V
.end method

.method private native nativeRemoveTabThumbnail(JI)V
.end method

.method private native nativeRemoveTabThumbnailFromDiskAtAndAboveId(JI)V
.end method

.method private native nativeUpdateVisibleIds(J[I)V
.end method

.method private notifyDecompressBitmapFinished(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mDecompressRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$DecompressThumbnailCallback;

    .line 258
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mDecompressRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 259
    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-interface {v0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$DecompressThumbnailCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private readbackNativePage(Lorg/chromium/chrome/browser/tab/Tab;F)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v1

    .line 175
    if-nez v1, :cond_0

    move-object v0, v2

    .line 210
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-interface {v1}, Lorg/chromium/chrome/browser/NativePage;->getView()Landroid/view/View;

    move-result-object v3

    .line 180
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 181
    goto :goto_0

    .line 184
    :cond_2
    instance-of v0, v1, Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 185
    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;->shouldCaptureThumbnail()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 186
    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContentOffsetProvider:Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;->getOverlayTranslateY()I

    move-result v4

    .line 193
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mThumbnailScale:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-virtual {v2, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 203
    const/4 v5, 0x0

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    instance-of v4, v1, Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;

    if-eqz v4, :cond_4

    .line 205
    check-cast v1, Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;->captureThumbnail(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public addThumbnailChangeListener(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$ThumbnailChangeListener;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    return-void
.end method

.method public cacheTabThumbnail(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 7

    .prologue
    .line 228
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mSnapshotsEnabled:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mThumbnailScale:F

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->readbackNativePage(Lorg/chromium/chrome/browser/tab/Tab;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 231
    if-nez v5, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mThumbnailScale:F

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeCacheTabWithBitmap(JLjava/lang/Object;Ljava/lang/Object;F)V

    .line 234
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 236
    :cond_2
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mThumbnailScale:F

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeCacheTab(JLjava/lang/Object;Ljava/lang/Object;F)V

    goto :goto_0
.end method

.method public cleanupPersistentData(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 345
    :cond_0
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/PathUtils;->getThumbnailCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 332
    if-eqz v1, :cond_0

    .line 334
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 336
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 337
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    if-nez v4, :cond_2

    .line 339
    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    invoke-direct {p0, v4, v5, v3}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeRemoveTabThumbnail(JI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 143
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 144
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeDestroy(J)V

    .line 145
    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    .line 147
    :cond_0
    return-void
.end method

.method public getThumbnailForId(ILorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$DecompressThumbnailCallback;)V
    .locals 4

    .prologue
    .line 248
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mDecompressRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mDecompressRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeGetDecompressedThumbnail(JI)V

    goto :goto_0
.end method

.method public hasFullCachedThumbnail(I)Z
    .locals 4

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeHasFullCachedThumbnail(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public invalidateIfChanged(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 269
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 270
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeInvalidateIfChanged(JILjava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public invalidateTabThumbnail(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->invalidateIfChanged(ILjava/lang/String;)V

    .line 281
    return-void
.end method

.method protected notifyListenersOfThumbnailChange(I)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$ThumbnailChangeListener;

    .line 350
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$ThumbnailChangeListener;->onThumbnailChange(I)V

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method public removeTabThumbnail(I)V
    .locals 4

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 310
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeRemoveTabThumbnail(JI)V

    .line 312
    :cond_0
    return-void
.end method

.method public removeThumbnailChangeListener(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$ThumbnailChangeListener;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public updateVisibleIds(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 290
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mFullResThumbnailsMaxSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mPriorityTabIds:[I

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 293
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mPriorityTabIds:[I

    .line 296
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 297
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mPriorityTabIds:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 299
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mNativeTabContentManager:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->mPriorityTabIds:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->nativeUpdateVisibleIds(J[I)V

    .line 301
    :cond_2
    return-void
.end method
