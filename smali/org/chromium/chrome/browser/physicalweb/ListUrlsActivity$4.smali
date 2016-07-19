.class Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;
.super Ljava/lang/Object;
.source "ListUrlsActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;J)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPwsResults(Ljava/util/Collection;)V
    .locals 5

    .prologue
    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->val$timestamp:J

    sub-long/2addr v0, v2

    .line 208
    iget-object v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-static {v2, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onForegroundPwsResolution(Landroid/content/Context;J)V

    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;

    .line 212
    iget-object v2, v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->siteUrl:Ljava/lang/String;

    .line 213
    iget-object v3, v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->iconUrl:Ljava/lang/String;

    .line 215
    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;
    invoke-static {v4}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$200(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->hasSiteUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;
    invoke-static {v2}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$200(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->add(Ljava/lang/Object;)V

    .line 218
    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$200(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->hasIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # invokes: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->fetchIcon(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$300(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # invokes: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->finishRefresh()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$400(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V

    .line 224
    return-void
.end method
