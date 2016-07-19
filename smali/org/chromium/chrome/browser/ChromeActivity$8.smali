.class Lorg/chromium/chrome/browser/ChromeActivity$8;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Lorg/chromium/content_public/browser/ContentBitmapCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;

.field final synthetic val$currentTab:Lorg/chromium/chrome/browser/tab/Tab;

.field final synthetic val$mainActivity:Landroid/app/Activity;

.field final synthetic val$shareDirectly:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$currentTab:Lorg/chromium/chrome/browser/tab/Tab;

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$shareDirectly:Z

    iput-object p4, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$mainActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishGetBitmap(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 923
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$currentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getOfflinePageOriginalUrl()Ljava/lang/String;

    move-result-object v1

    .line 924
    const-string/jumbo v2, "OfflinePages.SharedPageWasOffline"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 929
    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$currentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 931
    :goto_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$shareDirectly:Z

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$mainActivity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$currentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper;->share(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 933
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$8;->val$shareDirectly:Z

    if-eqz v0, :cond_1

    .line 934
    const-string/jumbo v0, "MobileMenuDirectShare"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 938
    :goto_2
    return-void

    .line 924
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 936
    :cond_1
    const-string/jumbo v0, "MobileMenuShare"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
