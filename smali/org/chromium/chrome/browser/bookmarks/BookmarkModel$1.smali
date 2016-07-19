.class final Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$1;
.super Ljava/lang/Object;
.source "BookmarkModel.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    check-cast p2, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$1;->compare(Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;)I

    move-result v0

    return v0
.end method

.method public final compare(Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;)I
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getLastAccessTimeMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getLastAccessTimeMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 73
    const/4 v0, -0x1

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getLastAccessTimeMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getLastAccessTimeMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
