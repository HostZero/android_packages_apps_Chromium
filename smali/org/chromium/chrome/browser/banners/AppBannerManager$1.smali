.class Lorg/chromium/chrome/browser/banners/AppBannerManager$1;
.super Ljava/lang/Object;
.source "AppBannerManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/banners/AppDetailsDelegate$Observer;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/banners/AppBannerManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/banners/AppBannerManager;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager$1;->this$0:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDetailsRetrieved(Lorg/chromium/chrome/browser/banners/AppData;)V
    .locals 8

    .prologue
    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager$1;->this$0:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    # getter for: Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->access$000(Lorg/chromium/chrome/browser/banners/AppBannerManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/banners/AppData;->imageUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager$1;->this$0:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager$1;->this$0:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    # getter for: Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->access$000(Lorg/chromium/chrome/browser/banners/AppBannerManager;)J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/banners/AppData;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/banners/AppData;->packageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/banners/AppData;->imageUrl()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    # invokes: Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeOnAppDetailsRetrieved(JLorg/chromium/chrome/browser/banners/AppData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v1 .. v7}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->access$100(Lorg/chromium/chrome/browser/banners/AppBannerManager;JLorg/chromium/chrome/browser/banners/AppData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
