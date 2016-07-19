.class Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory$DocumentTabWebContentsDelegateAndroid;
.super Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
.source "DocumentTabDelegateFactory.java"


# instance fields
.field private mIsIncognito:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 27
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory$DocumentTabWebContentsDelegateAndroid;->mIsIncognito:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected getTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory$DocumentTabWebContentsDelegateAndroid;->mIsIncognito:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    return-object v0
.end method
