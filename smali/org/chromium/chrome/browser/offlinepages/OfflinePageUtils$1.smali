.class final Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;
.super Ljava/lang/Object;
.source "OfflinePageUtils.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

.field final synthetic val$tabId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    const-class v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;I)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    iput p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;->val$tabId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAction(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 236
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :cond_0
    const-string/jumbo v0, "OfflinePages.ReloadButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils$1;->val$tabId:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 239
    if-nez v0, :cond_1

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getOfflinePageOriginalUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 243
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setShouldReplaceCurrentEntry(Z)V

    .line 244
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method public final onDismissNoAction(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    const-string/jumbo v0, "OfflinePages.ReloadButtonNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 250
    return-void
.end method
