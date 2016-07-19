.class Lorg/chromium/chrome/browser/profiles/MostVisitedSites$2;
.super Ljava/lang/Object;
.source "MostVisitedSites.java"

# interfaces
.implements Lorg/chromium/chrome/browser/profiles/MostVisitedSites$ThumbnailCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/profiles/MostVisitedSites$ThumbnailCallback;


# virtual methods
.method public onMostVisitedURLsThumbnailAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$2;->this$0:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    # getter for: Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->access$000(Lorg/chromium/chrome/browser/profiles/MostVisitedSites;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$2;->val$callback:Lorg/chromium/chrome/browser/profiles/MostVisitedSites$ThumbnailCallback;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$ThumbnailCallback;->onMostVisitedURLsThumbnailAvailable(Landroid/graphics/Bitmap;Z)V

    .line 127
    :cond_0
    return-void
.end method
