.class Lorg/chromium/chrome/browser/document/DocumentActivity$3;
.super Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;
.source "DocumentActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$3;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V

    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public isSatisfied(I)Z
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected runImmediately()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$3;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->migrateTabsToDocumentForUpgrade(Landroid/app/Activity;I)Z

    .line 338
    return-void
.end method
