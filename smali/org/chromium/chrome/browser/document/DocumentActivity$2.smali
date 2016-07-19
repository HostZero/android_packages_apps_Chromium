.class Lorg/chromium/chrome/browser/document/DocumentActivity$2;
.super Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;
.source "DocumentActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;I)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$2;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    iput p3, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$2;->val$tabId:I

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V

    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$2;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$2;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSatisfied(I)Z
    .locals 2

    .prologue
    .line 289
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$2;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$500(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$2;->val$tabId:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isTabStateReady(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runImmediately()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$2;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->initializeUI()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$600(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 301
    return-void
.end method
