.class public Lorg/chromium/chrome/browser/compositor/LayerTitleCache;
.super Ljava/lang/Object;
.source "LayerTitleCache.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/TitleCache;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sNextResourceId:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

.field private final mFaviconSize:I

.field protected mIncognitoTitleBitmapFactory:Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

.field private mNativeLayerTitleCache:J

.field private mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

.field protected mStandardTitleBitmapFactory:Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

.field private final mTitles:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->sNextResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 53
    sget v0, Lorg/chromium/chrome/R$dimen;->border_texture_title_fade:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 54
    sget v0, Lorg/chromium/chrome/R$dimen;->tab_title_favicon_start_padding:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 56
    sget v0, Lorg/chromium/chrome/R$dimen;->tab_title_favicon_end_padding:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 58
    sget v4, Lorg/chromium/chrome/R$drawable;->spinner:I

    sget v5, Lorg/chromium/chrome/R$drawable;->spinner_white:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->nativeInit(IIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    .line 60
    sget v0, Lorg/chromium/chrome/R$dimen;->compositor_tab_title_favicon_size:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mFaviconSize:I

    .line 61
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

    const/4 v1, 0x0

    sget v2, Lorg/chromium/chrome/R$drawable;->default_favicon:I

    invoke-direct {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;-><init>(Landroid/content/Context;ZI)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mStandardTitleBitmapFactory:Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

    const/4 v1, 0x1

    sget v2, Lorg/chromium/chrome/R$drawable;->default_favicon_white:I

    invoke-direct {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;-><init>(Landroid/content/Context;ZI)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mIncognitoTitleBitmapFactory:Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->updateFaviconFromHistory(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 30
    sget v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->sNextResourceId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->sNextResourceId:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;)Lorg/chromium/ui/resources/ResourceManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    return-object v0
.end method

.method private fetchFaviconForTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 135
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->hasOffTheRecordProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mFaviconSize:I

    new-instance v4, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$1;

    invoke-direct {v4, p0, p1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$1;-><init>(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    goto :goto_0
.end method

.method private getNativePtr()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    return-wide v0
.end method

.method private getTitleForTab(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo p2, ""

    .line 165
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method private getUpdatedTitleInternal(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .prologue
    .line 104
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v4

    .line 105
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v7

    .line 107
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isTitleDirectionRtl()Z

    move-result v8

    .line 108
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mIncognitoTitleBitmapFactory:Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

    move-object v1, v0

    .line 111
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;-><init>(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;)V

    .line 114
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->register()V

    .line 118
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->getTitleBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->getFaviconBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p3}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->set(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 122
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-eqz v1, :cond_1

    .line 123
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->getTitleResId()I

    move-result v5

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->getFaviconResId()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->nativeUpdateLayer(JIIIZZ)V

    .line 126
    :cond_1
    return-object p2

    .line 108
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mStandardTitleBitmapFactory:Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;

    move-object v1, v0

    goto :goto_0
.end method

.method private native nativeClearExcept(JI)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeInit(IIIII)J
.end method

.method private native nativeUpdateFavicon(JII)V
.end method

.method private native nativeUpdateLayer(JIIIZZ)V
.end method

.method private updateFaviconFromHistory(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->updateFaviconFromHistory(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 177
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->getFaviconResId()I

    move-result v0

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->nativeUpdateFavicon(JII)V

    goto :goto_0
.end method


# virtual methods
.method public clearExcept(I)V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;

    .line 194
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 195
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;

    .line 196
    if-eq v1, v0, :cond_0

    .line 197
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->unregister()V

    .line 194
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 201
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 205
    :goto_1
    return-void

    .line 204
    :cond_3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->nativeClearExcept(JI)V

    goto :goto_1
.end method

.method public getUpdatedTitle(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 96
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->getTitleForTab(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-direct {p0, p1, v1, v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->getUpdatedTitleInternal(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Z)Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->fetchFaviconForTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 99
    :cond_0
    return-object v1

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;

    .line 184
    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->unregister()V

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mTitles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 188
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    move-object v1, p0

    move v4, p1

    move v6, v5

    move v8, v7

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->nativeUpdateLayer(JIIIZZ)V

    goto :goto_0
.end method

.method public setResourceManager(Lorg/chromium/ui/resources/ResourceManager;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    .line 73
    return-void
.end method

.method public shutDown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->nativeDestroy(J)V

    .line 81
    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mNativeLayerTitleCache:J

    goto :goto_0
.end method
