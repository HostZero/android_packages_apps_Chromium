.class abstract Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;
.super Ljava/lang/Object;
.source "WebsitePermissionsFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method runAsync(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;)V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;->run()V

    .line 180
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->next()V

    .line 181
    return-void
.end method
