.class Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;
.super Ljava/util/LinkedList;
.source "WebsitePermissionsFetcher.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;-><init>()V

    return-void
.end method


# virtual methods
.method next()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;->runAsync(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;)V

    .line 191
    :cond_0
    return-void
.end method
