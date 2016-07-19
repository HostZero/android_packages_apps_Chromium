.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"


# instance fields
.field private final mMemoryCache:Landroid/util/LruCache;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->mMemoryCache:Landroid/util/LruCache;

    .line 650
    return-void
.end method


# virtual methods
.method public getLocalFaviconImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->mMemoryCache:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Local"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSyncedFaviconImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->mMemoryCache:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Synced"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public putLocalFaviconImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->mMemoryCache:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Local"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void
.end method

.method public putSycnedFaviconImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->mMemoryCache:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Synced"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    return-void
.end method
